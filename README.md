# Aponti-Academy

Projetos feitos durante a formação de análise de dados da **Aponti Academy** no módulo 01.

Todos os projetos utilizam a mesma base de dados — **Dados Abertos da PRF (DATATRAN 2025)**, com aproximadamente **72.529 registros** de acidentes em rodovias federais brasileiras — explorada em diferentes ferramentas e níveis de complexidade, do Excel básico à preparação de dados em Python para modelagem.

## Sobre a formação

A trilha de projetos acompanha um fluxo típico de um projeto de dados: **entendimento e tratamento em planilha → cruzamentos e visualização em Excel avançado → modelagem em banco de dados relacional → tratamento e engenharia de variáveis em Python**, usando sempre a mesma base como fio condutor.

## Projetos

### [`01-dados-prf-2025-atividade-01`](./01-dados-prf-2025-atividade-01)
**Excel — Fórmulas e Funções**
Atividade introdutória de Excel, com operações entre colunas, funções condicionais (`SE`), estatísticas (`MÉDIA`, `MEDIANA`, `QUARTIL`), contagem (`CONT.SE`, `CONT.VALORES`), busca de dados (`PROCV`) e construção de gráficos de dispersão, pizza e barras.

### [`02-dados-prf-2025-atividade-02`](./02-dados-prf-2025-atividade-02)
**Excel — Tabelas Dinâmicas e Gráficos Dinâmicos**
Evolução da atividade anterior: conversão da base em Tabela do Excel, criação de coluna calculada, dicionário de dados, 8 Tabelas Dinâmicas com diferentes cruzamentos e agregações, 5 Gráficos Dinâmicos vinculados e documentação analítica dos principais achados.

### [`03-dados-prf-2025-sql`](./03-dados-prf-2025-sql)
**SQL — Modelagem de Dados**
Migração das análises para um banco relacional: criação da tabela base e de uma cadeia de views que tratam, enriquecem (coluna calculada `acidente_fatal`, extração de mês) e sumarizam os dados em indicadores mensais e por UF/rodovia.

### [`04-dados-prf-2025-python`](./04-dados-prf-2025-python)
**Python — Preparação de Dados**
Pipeline completo em pandas: ingestão com fallback de encoding, limpeza e padronização, tratamento de nulos e duplicados, engenharia de variáveis (variável-alvo `acidente_fatal`, índice de gravidade, chave de localidade), análise exploratória, prevenção de data leakage e geração automática de bases tratadas, dicionário de variáveis e documentação.

## Tecnologias utilizadas

- **Excel** — fórmulas, funções, tabelas dinâmicas e gráficos
- **SQL** — tabelas, views, agregações e indicadores
- **Python** — pandas, numpy, matplotlib

## Objetivo geral

Consolidar, de ponta a ponta, as competências de análise de dados trabalhadas ao longo da formação — desde a manipulação básica de planilhas até a preparação de bases para modelagem preditiva — utilizando um único conjunto de dados real como fio condutor entre as diferentes ferramentas.
