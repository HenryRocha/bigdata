## Indices
- O que são:
  - Índices são estruturas de dados que facilitam a localização de informação no banco de dados.

- Quando criar indice? Sempre que:
    - Chave primária
    - Chave estrangeira
    - Colunas:
    - Com muita demanda de busca
    - Sem muita repetição de valores
    - Sem muito NULL
    - Valores não mudam com frequência (preferencialmente nunca)

- Quando não criar indice? Sempre que:
  - Colunas que mudam com frequência
  - Colunas com muita repetição de valores
  - Colunas com muitos NULL
  - Colunas que não são usadas com frequência em buscas
  - _Não criar mais de 6 indices por tabela_

## Hash Tables

- Mapa chave-valor organizados pelo valor hash da chave
- Bom para buscas por valor exato
- Ruim para buscas por faixas de valor
- Complexidade:
  - Busca? O(1)
  - Inserção? O(1)
  - Remoção? O(1)

## B-Tree
- Um tipo de árvore balanceada de busca
- Razoável para buscas por valor exato
- Boa para buscas por faixa de valor
- Complexidade:
  - Busca? O(log(n))
  - Inserção? O(log(n))
  - Remoção? O(log(n))
