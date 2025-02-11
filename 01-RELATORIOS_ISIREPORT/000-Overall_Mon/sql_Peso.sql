select
    dados.cod_dm
    , dados.peso_total
    , dados.ext_jnt
from
    (
    select
        dmt.cod_dm
        , dmt.peso_total
        , decode(jnt.execucao
            , 0, 'OFC'
            , 1, 'MNT'
            , 2, 'PMN'
            , 3, 'EDF') as execucao
        , sum(jnt.extensao) ext_jnt
    from(
        select
            jdf.pdfbdf
            , jdf.bold_id
        from
            jutjunta_df jdf
        union all
        select
            jdm.pdfbdf1
            , jdm.bold_id
        from
            jutjunta_dm jdm) jut
        inner join jntjunta jnt on jut.bold_id = jnt.bold_id
        inner join dfbdesenhofabricacao dfb on jut.pdfbdf = dfb.bold_id
        inner join dmtdesenhomontagem dmt on dfb.pdmtdm = dmt.bold_id
    where
        jnt.cod_junta not like '#%'
    group by
        1, 2, 3) dados
where
    dados.execucao = @execucao --and dados.cod_dm = @MODULO