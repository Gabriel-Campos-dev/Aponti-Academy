## Sobre o projeto

Projeto de estudo desenvolvido como continuação da atividade de fórmulas, com o objetivo de praticar recursos mais avançados de **Excel para exploração, sumarização e visualização de dados** a partir da base de Dados Abertos da PRF (DATATRAN 2025), com **72.529 registros** de acidentes em rodovias federais.

As atividades exploram a criação de uma tabela formatada, documentação de dados, construção de tabelas dinâmicas com múltiplos cruzamentos e criação de gráficos dinâmicos vinculados a essas tabelas.

## Atividades realizadas

### 1. Tratamento e estruturação dos dados

Foram realizadas atividades envolvendo:

- conversão da base em **Tabela do Excel** nomeada (`tb_acidentes_prf`), com autofiltro em todas as colunas;
- formatação específica de colunas (data e hora);
- criação de **coluna calculada** (`acidente_fatal`), indicando se o registro teve ao menos uma vítima fatal;
- documentação da base em um **dicionário de dados**, com tipo, utilidade analítica e observações de qualidade para cada um dos 31 campos.

### 2. Tabelas dinâmicas

Foram construídas **8 Tabelas Dinâmicas**, todas conectadas à mesma tabela de origem, explorando diferentes cruzamentos:

- acidentes fatais por UF;
- acidentes fatais por mês (com agrupamento de datas diárias em meses);
- contagem de acidentes por causa;
- mortes por rodovia (BR);
- contagem e mortes por tipo de acidente;
- contagem e acidentes fatais por condição meteorológica;
- contagem e mortes por classificação de gravidade do acidente;
- acidentes fatais por município.

Recursos praticados: agregações de soma e contagem, ordenação decrescente, múltiplos campos de valores na mesma tabela e linha de total geral automática.

### 3. Visualização de dados

Foram construídos **5 Gráficos Dinâmicos**, vinculados às tabelas dinâmicas e atualizados automaticamente junto com elas:

- gráfico de **barras** — Top 10 estados com maior número de acidentes;
- gráfico de **linhas** — distribuição mensal dos acidentes fatais (sazonalidade);
- gráfico de **barras** — 10 principais causas dos acidentes;
- gráfico de **barras** — rodovias federais com maior número de mortes;
- gráfico de **barras** — comparação entre acidentes fatais e não fatais.

### 4. Documentação analítica

Como atividade complementar, foi elaborada uma aba de **observações**, com a síntese dos principais achados por tema (território, tempo, causa, tipo de acidente, clima e fatalidade), transformando os números das tabelas dinâmicas em conclusões escritas.

## Competências desenvolvidas

O projeto permitiu praticar:

- criação e uso de Tabelas do Excel como fonte dinâmica de dados;
- criação de colunas calculadas;
- documentação de dados (dicionário de dados);
- construção de Tabelas Dinâmicas com múltiplos cruzamentos e agregações;
- agrupamento de datas em tabelas dinâmicas;
- ordenação e sumarização de grandes volumes de dados;
- criação de Gráficos Dinâmicos vinculados a tabelas dinâmicas;
- interpretação de dados e redação de conclusões analíticas.

## Objetivo do projeto

Aplicar recursos avançados do Excel para explorar uma base de dados de forma interativa, utilizando **tabela formatada, colunas calculadas, tabelas dinâmicas, gráficos dinâmicos e documentação analítica** dos resultados.