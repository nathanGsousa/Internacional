CREATE TABLE "public".Dados_exportacao
(
	id SERIAL PRIMARY KEY,
    CO_ANO INTEGER,
    CO_MES VARCHAR(10),
    SH4 VARCHAR(10),
    CO_PAIS VARCHAR(10),
    SG_UF_MUN VARCHAR(10),
    CO_MUN VARCHAR(100),
    KG_LIQUIDO NUMERIC(18,2),
    VL_FOB NUMERIC(18,2)
)

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2010-2014\EXP_2010_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2010-2014\EXP_2011_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2010-2014\EXP_2012_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2010-2014\EXP_2013_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2010-2014\EXP_2014_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2015-2019\EXP_2015_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2015-2019\EXP_2016_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2015-2019\EXP_2017_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2015-2019\EXP_2018_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2015-2019\EXP_2019_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2020-2025\EXP_2020_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2020-2025\EXP_2021_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2020-2025\EXP_2022_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2020-2025\EXP_2023_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2020-2025\EXP_2024_MUN.csv'
DELIMITER ';' CSV HEADER;

-- Importando
COPY "public".Dados_exportacao (CO_ANO, CO_MES, SH4, CO_PAIS, SG_UF_MUN, CO_MUN, KG_LIQUIDO, VL_FOB)
FROM 'C:\Program Files\PostgreSQL\Dados_exportacao\2020-2025\EXP_2025_MUN.csv'
DELIMITER ';' CSV HEADER;

CREATE INDEX idx_exp_main
ON Dados_exportacao (CO_ANO, CO_MUN, SH4, CO_PAIS);

-- Tabela paises
-- DROP TABLE "public".paises;

CREATE TABLE "public".paises (
    CO_PAIS VARCHAR(10) PRIMARY KEY,
    CO_PAIS_ISON3 VARCHAR(10),
    NO_PAIS_POR VARCHAR(100),
    NO_PAIS_ING VARCHAR(100),
    NO_PAIS_ESP VARCHAR(100)
);

COPY "public".paises (CO_PAIS, CO_PAIS_ISON3, NO_PAIS_POR, NO_PAIS_ING, NO_PAIS_ESP)
FROM 'C:\Program Files\PostgreSQL\\PAIS.csv'
DELIMITER ';' CSV HEADER ENCODING 'LATIN1';

-- Criar tabela estados
CREATE TABLE "public".estados (	
    SG_UF_MUN VARCHAR(10) PRIMARY KEY,
    CO_UF VARCHAR(10),
    NO_UF VARCHAR(100),
    NO_REGIAO VARCHAR(100)
);

COPY "public".estados (SG_UF_MUN, CO_UF, NO_UF, NO_REGIAO)
FROM 'C:\Program Files\PostgreSQL\UF.csv'
DELIMITER ';' CSV HEADER ENCODING 'LATIN1';

-- Criar tabela municipios
CREATE TABLE "public".municipios (	
    CO_MUN VARCHAR(10) PRIMARY KEY,
    NO_MUN VARCHAR(100),
    NO_MUN_MIN VARCHAR(100),
    SG_UF VARCHAR(10)
);

COPY "public".municipios (CO_MUN, NO_MUN, NO_MUN_MIN, SG_UF)
FROM 'C:\Program Files\PostgreSQL\UF_MUN.csv'
DELIMITER ';' CSV HEADER ENCODING 'LATIN1';

-- Criar tabela sh4
DROP TABLE public.sh4
CREATE TABLE public.sh4 (
    SH4 VARCHAR(4) PRIMARY KEY,
    NO_SH4_POR TEXT,
    NO_SH4_ESP TEXT,
    NO_SH4_ING TEXT,
    CO_SH2 VARCHAR(2),
    NO_SH2_POR TEXT,
    NO_SH2_ESP TEXT,
    NO_SH2_ING TEXT,
    CO_NCM_SECROM VARCHAR,
    NO_SEC_POR TEXT,
    NO_SEC_ESP TEXT,
    NO_SEC_ING TEXT
);

COPY public.sh4 (
    SH4,
    NO_SH4_POR,
    NO_SH4_ESP,
    NO_SH4_ING,
    CO_SH2,
    NO_SH2_POR,
    NO_SH2_ESP,
    NO_SH2_ING,
    CO_NCM_SECROM,
    NO_SEC_POR,
    NO_SEC_ESP,
    NO_SEC_ING
)
FROM 'C:\Program Files\PostgreSQL\NCM_SH.csv'
DELIMITER ';'
CSV HEADER
ENCODING 'LATIN1';

----------

---- Final obtendo os dados para o nordeste


CREATE MATERIALIZED VIEW cms_base_ne_anual AS
SELECT
    e.sg_uf_mun AS uf,
    e.no_uf AS estado,
    d.co_ano AS ano,
    s.co_ncm_secrom AS secao,
    s.no_sec_por AS nome_secao,
    d.co_pais,
    p.co_pais_ison3 AS co_pais_ison_num,
    p.no_pais_por AS destino,
    CASE
        WHEN d.co_ano BETWEEN 2015 AND 2019 THEN 'P1'
        WHEN d.co_ano BETWEEN 2020 AND 2024 THEN 'P2'
    END AS periodo,
    SUM(d.vl_fob) AS valor_fob
FROM dados_exportacao d
JOIN municipios m
    ON d.co_mun = m.co_mun
JOIN estados e
    ON m.sg_uf = e.sg_uf_mun
JOIN sh4 s
    ON d.sh4 = s.sh4
JOIN paises p
    ON d.co_pais = p.co_pais
WHERE
    d.co_ano BETWEEN 2015 AND 2024
    AND e.no_regiao = 'REGIAO NORDESTE'
GROUP BY
    e.sg_uf_mun,
    e.no_uf,
    d.co_ano,
    s.co_ncm_secrom,
    s.no_sec_por,
    d.co_pais,
    p.co_pais_ison3,
    p.no_pais_por,
    periodo;
	
COPY cms_base_ne_anual
TO 'C:\Dados\Dados_anual.csv'
WITH CSV HEADER DELIMITER ';';


