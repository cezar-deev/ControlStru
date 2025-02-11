
-- / LISTA DETALHADA COM PARAMETROS DE SODLADGEM ( DUPLICA AS LINHAS ) \ --

SELECT 
    S.SINETE,
    S.NOME,
    S.AREA,
    S.DTENTRADA,
CASE
    WHEN S.DTAFASTAMENTO = '30.12.1899'  
    THEN '  ' 
    ELSE CAST(S.DTAFASTAMENTO AS DATE ) 
    END AS DTAFASTAMENTO,
CASE
    WHEN S.DTSAIDA = '30.12.1899'  
    THEN '  ' 
    ELSE CAST(S.DTSAIDA AS DATE ) 
    END AS DTSAIDA,
    Q.DTQUALI,
CASE
    WHEN Q.DTDESQUALI = '30.12.1899'  
    THEN '  ' 
    ELSE CAST(Q.DTDESQUALI AS DATE ) 
    END AS DTDESQUALI

FROM SOLSOLDADOR S
LEFT JOIN SOQSOL_QUALIFICACAO Q ON S.BOLD_ID=Q.PSOLSOLDADOR

WHERE
    SINETE='EJA-0031' OR
    SINETE='EJA-0051' OR
    SINETE='EJA-0054' OR
    SINETE='EJA-0062' OR
    SINETE='EJA-0065' OR
    SINETE='EJA-0098' OR
    SINETE='EJA-0130' OR
    SINETE='EJA-0174' OR
    SINETE='EJA-0213' OR
    SINETE='EJA-0254' OR
    SINETE='EJA-0255' OR
    SINETE='EJA-0290' OR
    SINETE='EJA-0295' OR
    SINETE='EJA-0342' OR
    SINETE='EJA-0343' OR
    SINETE='EJA-0344' OR
    SINETE='EJA-0345' OR
    SINETE='EJA-0346' OR
    SINETE='EJA-0347' OR
    SINETE='EJA-0348' OR
    SINETE='EJA-0349' OR
    SINETE='EJA-0350' OR
    SINETE='EJA-0351' OR
    SINETE='EJA-0352'


 -- / LISTA SIMPLES  \ --


    SELECT 
    SINETE,
    NOME,
    AREA,
    DTENTRADA,
    CASE
        WHEN DTAFASTAMENTO = '30.12.1899'  
        THEN '  ' 
        ELSE CAST(DTAFASTAMENTO AS DATE ) 
        END AS DTAFASTAMENTO,
    CASE
        WHEN DTSAIDA = '30.12.1899'  
        THEN '  ' 
        ELSE CAST(DTSAIDA AS DATE ) 
        END AS DTSAIDA,

FROM SOLSOLDADOR

WHERE
    SINETE='EJA-0031' OR
    SINETE='EJA-0051' OR
    SINETE='EJA-0054' OR
    SINETE='EJA-0062' OR
    SINETE='EJA-0065' OR
    SINETE='EJA-0098' OR
    SINETE='EJA-0130' OR
    SINETE='EJA-0174' OR
    SINETE='EJA-0213' OR
    SINETE='EJA-0254' OR
    SINETE='EJA-0255' OR
    SINETE='EJA-0290' OR
    SINETE='EJA-0295' OR
    SINETE='EJA-0342' OR
    SINETE='EJA-0343' OR
    SINETE='EJA-0344' OR
    SINETE='EJA-0345' OR
    SINETE='EJA-0346' OR
    SINETE='EJA-0347' OR
    SINETE='EJA-0348' OR
    SINETE='EJA-0349' OR
    SINETE='EJA-0350' OR
    SINETE='EJA-0351' OR
    SINETE='EJA-0352'