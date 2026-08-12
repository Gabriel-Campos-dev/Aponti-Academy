CREATE TABLE acidentes_prf_2025 (id INTEGER, data_inversa TEXT, dia_semana TEXT, horario TEXT, uf TEXT, br INTEGER, km TEXT, municipio TEXT, causa_acidente TEXT, tipo_acidente TEXT, classificacao_ac TEXT, fase_dia TEXT, sentido_via TEXT, condicao_metereo TEXT, tipo_pista TEXT, tracado_via TEXT, uso_solo TEXT, pessoas INTEGER, mortos INTEGER, feridos_leves INTEGER, feridos_graves INTEGER, ilesos INTEGER, ignorados INTEGER, feridos INTEGER, veiculos INTEGER, latitude TEXT, longitude TEXT, regional TEXT, delegacia TEXT, uop TEXT);

CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );

CREATE VIEW vw_acidentes_base AS
SELECT
  *,
  CASE
    WHEN CAST(mortos AS INTEGER) >= 1 THEN 1
    ELSE 0
  END AS acidente_fatal
FROM acidentes_prf_2025;

CREATE VIEW vw_base_analitica AS
SELECT
  data_inversa,
  dia_semana,
  horario,
  uf,
  br,
  municipio,
  causa_acidente,
  tipo_acidente,
  classificacao_ac,
  fase_dia,
  condicao_metereo,
  tipo_pista,
  tracado_via,
  uso_solo,
  CAST(mortos AS INTEGER) AS mortos,
  acidente_fatal
FROM vw_acidentes_base;

CREATE VIEW vw_base_modelavel_preliminar AS
SELECT
  uf,
  br,
  municipio,
  CAST(strftime('%m', data_inversa) AS INTEGER) AS mes,
  dia_semana,
  fase_dia,
  causa_acidente,
  tipo_acidente,
  condicao_metereo,
  tipo_pista,
  tracado_via,
  uso_solo,
  acidente_fatal
FROM vw_acidentes_base;

CREATE VIEW vw_indicadores_mensais AS
SELECT
  CAST(strftime('%Y', data_inversa) AS INTEGER) AS ano,
  CAST(strftime('%m', data_inversa) AS INTEGER) AS mes,
  COUNT(*) AS total_acidentes,
  SUM(CAST(mortos AS INTEGER)) AS total_mortos,
  SUM(acidente_fatal) AS acidentes_fatais,
  ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY ano, mes;

CREATE VIEW vw_indicadores_uf_br AS
SELECT
  uf,
  br,
  COUNT(*) AS total_acidentes,
  SUM(CAST(mortos AS INTEGER)) AS total_mortos,
  SUM(acidente_fatal) AS acidentes_fatais,
  ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
WHERE br IS NOT NULL
GROUP BY uf, br;
