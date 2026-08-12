## Sobre o projeto

Projeto de estudo com o objetivo de praticar recursos de **Excel para tratamento, análise e visualização de dados** a partir da base de Dados Abertos da PRF (DATATRAN 2025), com aproximadamente **72.529 registros** de acidentes em rodovias federais.

As atividades exploram operações matemáticas entre colunas, funções condicionais, funções estatísticas, busca de dados e construção de gráficos, distribuídas em 10 partes (`PARTE 01` a `PARTE 10`) sobre a base original.

## Atividades realizadas

### 1. Operações com os dados

Foram realizadas atividades envolvendo:

- subtração entre colunas (cálculo de feridos a partir de `pessoas - mortos - ilesos - ignorados`);
- multiplicação (cálculo de pontuação de risco a partir de uma taxa);
- divisão (cálculo de taxa de feridos graves: `feridos_graves / pessoas`);
- função condicional `SE` para classificar cada acidente como "Crítico" ou "Sem Vítimas Fatais".

### 2. Funções de análise

Foram utilizadas funções para contagem, estatística e busca de dados:

- `CONT.VALORES` (contagem de registros preenchidos);
- `CONT.SE` (contagem condicional por UF, causa do acidente, fase do dia e mês);
- `MÉDIA` (média do número de veículos envolvidos);
- `MEDIANA` (mediana do número de pessoas envolvidas);
- `QUARTIL` (quartis para análise de dispersão dos dados);
- `PROCV` (busca de município, causa do acidente e condição meteorológica a partir do id do acidente);
- `SE` (classificação condicional de gravidade).

### 3. Visualização de dados

Foram construídos **3 gráficos**, utilizando diferentes possibilidades de representação dos dados disponíveis na base:

- gráfico de **dispersão**, relacionando número de veículos e número de pessoas envolvidas por acidente;
- gráfico de **pizza**, mostrando a distribuição dos acidentes por fase do dia;
- gráfico de **barras**, com o ranking das principais causas de acidentes.

O objetivo foi praticar a transformação dos dados em informações visuais que facilitassem sua interpretação e comparação.

## Competências desenvolvidas

O projeto permitiu praticar:

- operações matemáticas em planilhas;
- referências entre colunas e intervalos;
- funções condicionais;
- funções estatísticas (média, mediana, quartil);
- funções de busca (`PROCV`);
- contagem e agregação de dados (`CONT.VALORES`, `CONT.SE`);
- criação de gráficos (dispersão, pizza, barras);
- organização de informações para análise.

## Objetivo do projeto

Aplicar recursos fundamentais do Excel para transformar uma base de dados em informações analisáveis, utilizando **fórmulas, funções, contagens estatísticas, busca de dados e visualizações**.