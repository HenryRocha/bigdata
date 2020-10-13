### Você recebeu um arquivo CSV com as informações do Clube dos Jogadores de Bolinha de Gude.
- Defina as dependências funcionais essenciais
- Passe para a 3NF
- _OBS: Uma bolinha é identificável pela sua cor, tamanho e material_

Inicial:
| Cor      | Tamanho | RGB         | Peso(g) | Diâmetro(cm) | Material | Valor(R$) | Dono | Qtde |
| -------- | ------- | ----------- | ------- | ------------ | -------- | --------- | ---- | ---- |
| Azul     | P       | (0, 0, 255) | 2       | 2            | Vidro    | 3.00      | Juca | 3    |
| Vermelha | G       | (255, 0, 0) | 15      | 5            | Vidro    | 10.00     | Ana  | 5    |
| Azul     | G       | (0, 0, 255) | 100     | 5            | Aço      | 15.00     | Juca | 6    |
| Vermelha | P       | (255, 0, 0) | 2       | 2            | Vidro    | 4.00      | Ana  | 2    |

Dependências funcionais:
- Cor => RGB
- Tamanho => Diâmetro
- Tamanho, Diâmetro, Material => Peso 
  - Tamanho, Material => Peso
- Cor, Tamanho, Peso, Diâmetro, Material => Valor 
  - Cor, Tamanho, Material => Valor
- Cor, Tamanho, Peso, Diâmetro, Material, Dono => Qtde 
  - Cor, Tamanho, Material, Dono => Qtde

Relações:
- (**_Cor_**, R, G, B)
- (**_Tamanho_**, Diâmetro)
- (**_Tamanho_**, **_Material_**, Peso)
- (**_Cor_**, **_Tamanho_**, **_Material_**, Valor)
- (**_Cor_**, **_Tamanho_**, **_Material_**, **_Dono_**, Qtde)

Tabelas:
| _id_cor_ | Cor | R   | G   | B   |
| -------- | --- | --- | --- | --- |
| x        | x   | x   | x   | x   |

| _id_tamanho_ | Diâmetro |
| ------------ | -------- |
| x            | x        |

| _id_material_ | Material |
| ------------- | -------- |
| x             | x        |

| _id_tamanho_ | _id_material_ | Peso |
| ------------ | ------------- | ---- |
| x            | x             | x    |

| _id_cor_ | _id_tamanho_ | _id_material_ | Valor |
| -------- | ------------ | ------------- | ----- |
| x        | x            | x             | x     |

| _id_dono_ | Dono |
| --------- | ---- |
| x         | x    |

| _id_cor_ | _id_tamanho_ | _id_material_ | _id_dono_ | Qtde |
| -------- | ------------ | ------------- | --------- | ---- |
| x        | x            | x             | x         | x    |
