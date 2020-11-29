## Exercícios

__1. (Prova Final 2019-2) (2 pts)__

Em um cluster temos vários arquivos enormes, de tamanho médio 1 GB. Todos os arquivos são do tipo       write-once-read-many: uma vez que o arquivo é criado, ele pode apenas ser removido por completo, nunca modificado parcialmente. Esse é o modo de operação do S3 da AWS.

Os arquivos são divididos em blocos de 64 MB e estão armazenados de modo redundante, com fator de replicação 3 (este é o modo padrão do HDFS). Ou seja, cada bloco é armazenado 3 vezes, em máquinas diferentes. 

Desejamos armazenar 10000 arquivos destes, em máquinas com 4 discos de 1TB SSD cada, nas quais queremos que os dados ocupem no máximo 75% do espaço. 

Toda semana parte dos arquivos será processada usando Spark para alguma atividade de extração de informação.

__a) (0,5 pts) Quais as vantagens e desvantagens da replicação em máquinas diferentes, neste contexto?__
- As vantagens são:
    - Resiliência
    - Redundância
    - Processamento paralelo
- As desvantagens são:
    - Custo

__b) (0,5 pts) Porque write-once-read-many é desejável aqui?__

Permite um design mais simples de aplicação para processamento em paralelo.

__c) (0,5 pts) Quantas máquinas este cluster deve ter, no mínimo, para acomodar esses dados?__
- 10.000 arquivos de 1GB em média -> 10TB de dados
- Replicação fator 3 -> 30TB dados + redundância
- Storage * 0.75 = 30TB, logo Storage = 40TB
- 4TB de disco por máquina -> __10 máquinas__

__d) (0,5 pts) Mais dados chegam constantemente ao sistema, que eventualmente ficará sem capacidade! Mas uma vez que a pipeline Spark é executada, os dados não são mais necessários de imediato. Proponha uma solução simples para não perder dados e não ter que aumentar indefinidamente o cluster.__

Fazer um backup de dados periodicamente em algum serviço de armazenamento de dados barato.


__2. (Prova Final 2018-2) (1 pt)__ 

__Descreva um sistema de armazenamento adequado para edição de vídeo, onde temos grandes massas de dados e a necessidade de transferi-los em alta velocidade numa rede local.__

- __Estime capacidade e velocidade de transferência para editar vídeos full HD (1920x1080, 3 quadros por segundo, 24-bit RGB) com taxa de compressão típica de 30% (ou seja, o tamanho comprimido é 30% do tamanho original).__

- __Cite tecnologias adequadas para este sistema.__

__Resposta__

- Transferência:
    - Para 1 stream de vídeo:
        - Cada quadro requer 1920 * 1080 (tamanho do quadro) * 3 (bytes por pixel) * 0.3 (taxa de compressão) bytes por segundo, ou seja, 1.866.240 bytes.
        - Para uma stream de 30 FPS seriam 30 * 1.866.240 = 55,9872 MB/s

    - (Pergunta que o aluno deveria fazer) Quantos streams?
        - Supondo 10 editores de vídeo simultâneos, temos 55,9872 * 10 = 559,872 MB/s
        - Considerando uma margem de segurança de 2x, temos 559,872 * 2 = 1,119744 GB/s
        - Sabendo que 1 byte = 8 bits, temos 1,119744 * 8 = 8,957952 Gb/s
    - Para que o sistema suporte essas velocidades são necessárias redes e placas com suporte a 10 Gigabit Ethernet.
- Armazenamento:
    - (Pergunta que o aluno deveria fazer) Quantos segundos de vídeo?
        - Suponde 20h de vídeo, temos 20 * 60 * 60 = 72.000s
        - Cada segundo de video tem 55,9872 MB, temos um total de 72000 * 55,9872 = 4.031.078,4 MB = 4,0310784 TB
    - Será necessário um armazenamento de pelomenos 4,1 TB

__3. (Prova Final 2017-2)__

__g) (1 pt) A rede social está fazendo um sucesso inacreditável! Estima-se que daqui a 6 meses a rede terá 2 milhões de usuários, cada um postando uma média de 10kB por dia de conteúdo (fotos, áudio, texto, etc).__ 

__Pelas regras desta rede social, todo o material postado nos últimos 12 meses estará rapidamente acessível, (em questão de milissegundos). A empresa deseja manter registros históricos de todo o material mais antigo (após 12 meses), indefinidamente.__

__Projete uma solução de armazenamento para a empresa, indicando o tamanho esperado do(s) espaço(s) de armazenamento.__
