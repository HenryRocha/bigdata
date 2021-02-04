### Questão 2

__A)__

Dado que o sistema possui hoje 250 petabytes, distribuidos em 50 mil discos, a capacidade média de cada disco será de:

250 / 50.000 = 0,005PB = 5TB

Sendo assim, cada disco tem, em média, capacidade de 5TB.

__B)__

Dado que o sistema possui hoje 50 mil discos, distribuidos em 1200 máquinas, a capacidade média de cada máquina será de

50.000 / 1200 = 41,666666667 discos

Sendo assim, cada máquina tem, em média, 41,67 discos.

__C)__

Sabemos que a taxa de transferência diária é 1 petabyte. Sabemos também que 1 petabyte = 1.000.000.000 megabytes.

Desse modo, a taxa mínima de transferência é de 1.000.000.000 MB/dia = 41.666.666,67 MB/hora = 694.444,44 MB/minuto = 11.574,074 MB/s.

Levando em consideração uma sobra de 20%, teriamos 11.574,074 * 1.2 = 13888,89 MB/s.

Sabendo que cada disco tem uma taxa de transferência de 1MB/s, seriam necessários 13888,89 / 1 = 13888,89 ~= 13889 discos ativos.


### Questão 3

__C)__

Para o constraint CASCADE, todos os CDs que o indicavam também seriam deletados.
Para o constraint RESTRICT, ocorrerá um erro, dizendo que ainda existem CDs que dependem do CD a ser deletado.
Para o constraint SET NULL, todos os CDs que o indicavam vão ter seus campos de 'CD_INDICADO' configurados como NULL.

__E)__

A tabela obtida através do inner join das tabelas gravadora e cd está na primeira forma normal, pois existem relações e o campos contém apenas uma informação.

A tabela não está na segunda formal normal pois existem dependências parciais, como por exemplo o Nome_CD é determinado apenas pelo Codigo_CD, e não pelo Codigo_Gravadora.

Como a tabela não está na segunda forma normal, ela também não está na terceira.

### Questão 4

Explicando: Porque processar dados em um cluster de máquinas de capacidade média ao invés de processar uma grande quantidade de dados em um unico servidor de altissima capacidade.

O custo de processar em máquinas de capacidade média é menor, visto que a soma do poder total de várias chega rapidamente ao poder de uma máquina de alta capacidade, por um custo menor.

Além disso, a taxa de transferência de dados também aumenta, visto que a taxa total será a soma de todas as máquinas, ao inves de ser limitada apenas pela entrada de uma máquina, como seria no caso de uma máquina de alta capacidade.

Outro ponto é a redundância e resiliência. Como o processamento seria feito em várias máquinas, caso uma delas falhasse, o processamento continuaria nas outras. Já no caso de apenas uma máquina, caso ela falhasse, todo o processamento seria paralizado.
