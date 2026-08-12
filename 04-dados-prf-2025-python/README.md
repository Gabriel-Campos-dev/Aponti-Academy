## Sobre o projeto

Projeto de estudo desenvolvido como continuação das atividades em Excel e SQL, com o objetivo de praticar **tratamento, limpeza e engenharia de variáveis em Python (pandas)** a partir da base de Dados Abertos da PRF (DATATRAN 2025), preparando os dados para análise exploratória, Power BI e modelagem preditiva (árvore de decisão explicável).

O notebook organiza o projeto em uma estrutura padrão de pastas (`dados_brutos`, `dados_tratados`, `notebooks`, `sql`, `dashboards`, `relatorios`, `apresentacao`, `logs`) e conduz um pipeline completo, do carregamento do CSV bruto até a exportação de bases prontas para uso, incluindo geração automática de dicionário de dados, log de decisões e README.

## Atividades realizadas

### 1. Ingestão e padronização dos dados

Foram realizadas atividades envolvendo:

- leitura do CSV com **fallback de encoding** (tentativa sequencial de `latin1`, `utf-8`, `utf-8-sig`);
- padronização dos nomes de colunas (minúsculas, sem acentos, sem espaços) com `unicodedata`;
- conferência de colunas esperadas na base;
- diagnóstico de tipos de dados e uso de memória (`df.info`);
- diagnóstico de valores ausentes (quantidade e percentual por coluna);
- identificação e remoção de registros duplicados;
- análise de cardinalidade das variáveis categóricas.

### 2. Tratamento e conversão de tipos

Foram utilizadas funções de conversão e tratamento de dados:

- conversão de colunas numéricas com `pd.to_numeric(errors="coerce")`;
- conversão de datas com `pd.to_datetime(errors="coerce")`, com extração de **ano, mês, trimestre, dia da semana e indicador de fim de semana**;
- tratamento do campo `horario`, com extração da hora e criação de **turno** (madrugada, manhã, tarde, noite) e de **faixa horária** (blocos de 3 em 3 horas);
- padronização de colunas de texto (`strip`, `upper`) e normalização de valores nulos (`""`, `"NAN"`, `"NONE"`, `"NULL"`);
- preenchimento de nulos categóricos relevantes com `"IGNORADO"`;
- preenchimento de nulos em colunas numéricas de contagem de vítimas com `0`.

### 3. Engenharia de variáveis (Feature Engineering)

Foram criadas novas variáveis a partir dos dados tratados:

- **`acidente_fatal`**: variável-alvo binária, calculada com `np.where(mortos > 1, 1, 0)`, com validação lógica de consistência;
- **`total_vitimas`**: soma de mortos, feridos leves e feridos graves;
- **`acidente_grave`**: indicador binário (1+ morto ou 1+ ferido grave);
- **`indice_gravidade`**: índice ponderado (`mortos*3 + feridos_graves*2 + feridos_leves`);
- **`br_formatada`**: padronização do número da rodovia no formato `BR-000`;
- **`chave_localidade`**: chave composta (UF + município + BR formatada).

### 4. Análise exploratória e checagens de qualidade

- checagens gerais da base (linhas, colunas, total de acidentes fatais, taxa de fatalidade, total de mortos e feridos);
- **ranking de categorias** (causa e tipo de acidente) com `value_counts`;
- **taxa de fatalidade por categoria**, usando `groupby` + `agg` (contagem, soma e média), com filtro por número mínimo de registros;
- gráfico de barras da distribuição da variável-alvo `acidente_fatal` com `matplotlib`.

### 5. Preparação das bases finais e exportação

- criação da **base analítica** (cópia completa e tratada dos dados, para EDA e Power BI);
- seleção de **variáveis modeláveis** para uma base voltada à modelagem preditiva;
- **verificação de data leakage**, garantindo que variáveis derivadas do desfecho (mortos, feridos, índice de gravidade etc.) não entrem na base modelável;
- tratamento final de nulos na base modelável (categóricas → `"IGNORADO"`, numéricas → `-1`);
- exportação das bases em CSV (`;`, `utf-8-sig`) e **validação de reabertura** (comparação de shape entre base original e reaberta).

### 6. Documentação automática do projeto

- geração de um **dicionário de variáveis** (nome, descrição e uso de cada variável derivada), exportado em CSV;
- geração de um **log de decisões de tratamento** em Markdown, registrando as principais escolhas metodológicas e os arquivos gerados;
- geração automática de um **README** do projeto, com objetivo, definição da variável-alvo, bases geradas e observação metodológica sobre data leakage;
- **resumo final** consolidado (linhas/colunas de cada base e taxa global de acidentes fatais).

## Competências desenvolvidas

O projeto permitiu praticar:

- leitura e tratamento de dados com pandas;
- padronização e limpeza de dados (nomes de colunas, textos, encoding);
- tratamento de valores ausentes e duplicados;
- conversão e engenharia de variáveis temporais;
- criação de variáveis derivadas e de uma variável-alvo;
- agregações e agrupamentos (`groupby`, `agg`, `value_counts`);
- boas práticas de preparação de dados para modelagem (prevenção de data leakage);
- visualização de dados com `matplotlib`;
- documentação automatizada de projetos de dados (dicionário de variáveis, log de decisões, README).