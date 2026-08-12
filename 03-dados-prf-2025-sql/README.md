## Sobre o projeto

Projeto de estudo desenvolvido como continuação das atividades em Excel, com o objetivo de praticar **modelagem e tratamento de dados em SQL** a partir da base de Dados Abertos da PRF (DATATRAN 2025), migrando as análises anteriormente feitas em planilha para um banco de dados relacional.

O projeto define a tabela bruta de acidentes e uma cadeia de **views** que tratam, enriquecem e sumarizam os dados progressivamente, simulando um pipeline analítico do dado bruto até indicadores prontos para consumo.

## Atividades realizadas

### 1. Modelagem da tabela base

Foi criada a tabela `acidentes_prf_2025`, com 29 colunas representando os campos originais da base de acidentes (data, dia da semana, horário, UF, BR, km, município, causa e tipo do acidente, condições da via e do clima, vítimas, veículos, latitude/longitude, regional, delegacia e UOP), além de uma tabela auxiliar `demo` de teste de estrutura (chave primária, texto e varchar).

### 2. Tratamento e enriquecimento dos dados (Views)

Foram criadas views encadeadas para tratar e preparar a base para análise:

- **`vw_acidentes_base`**: aplica conversão de tipo (`CAST`) e cria a coluna calculada `acidente_fatal` por meio de uma expressão condicional (`CASE WHEN`), classificando cada registro como fatal (1) ou não fatal (0) a partir do número de mortos.
- **`vw_base_analitica`**: seleciona e organiza um subconjunto de colunas relevantes para análise, já com `mortos` convertido para inteiro e a flag `acidente_fatal` incorporada.
- **`vw_base_modelavel_preliminar`**: prepara uma base "pronta para modelagem", extraindo o **mês** da data do acidente com `strftime('%m', data_inversa)` e mantendo apenas variáveis categóricas e a variável-alvo `acidente_fatal` — estrutura típica de preparação para modelos preditivos.

### 3. Views analíticas de indicadores agregados

Foram criadas views de sumarização com agregações e cálculo de percentuais:

- **`vw_indicadores_mensais`**: agrega os dados por ano e mês (`strftime('%Y'`/`'%m'`), calculando total de acidentes (`COUNT`), total de mortos e acidentes fatais (`SUM`) e o percentual de acidentes fatais (`ROUND` + regra de três) via `GROUP BY`.
- **`vw_indicadores_uf_br`**: agrega os dados por UF e rodovia (BR), com as mesmas métricas (total de acidentes, total de mortos, acidentes fatais e percentual de fatais), filtrando registros com BR não nula.

## Competências desenvolvidas

O projeto permitiu praticar:

- criação de tabelas (`CREATE TABLE`) e definição de tipos de dados;
- criação e encadeamento de views (`CREATE VIEW`);
- conversão de tipos (`CAST`);
- lógica condicional em SQL (`CASE WHEN`);
- manipulação de datas (`strftime`) para extração de ano e mês;
- funções de agregação (`COUNT`, `SUM`);
- cálculo de indicadores percentuais (`ROUND`);
- agrupamento de dados (`GROUP BY`);
- filtragem de registros (`WHERE`);
- organização de um pipeline analítico em camadas (base → analítica → modelável → indicadores).