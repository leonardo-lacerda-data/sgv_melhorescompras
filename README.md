<!-- PROJECT TITLE -->
<h1 align="center">🛒 SGV_MelhoresCompras</h1>

<p align="center">
  <b>Sistema de Gerenciamento de Vídeos</b><br>
  Projeto acadêmico focado em experiência do usuário ao consumir vídeos dos produtos na plataforma Melhores Compras
</p>

<!-- BADGES -->
<p align="center">
  <a href="https://github.com/leonardo-lacerda-data/sgv_melhorescompras/stargazers">
    <img src="https://img.shields.io/github/stars/leonardo-lacerda-data/sgv_melhorescompras?color=yellow&style=flat-square" alt="Stars">
  </a>
  <a href="https://github.com/leonardo-lacerda-data/sgv_melhorescompras/network/members">
    <img src="https://img.shields.io/github/forks/leonardo-lacerda-data/sgv_melhorescompras?color=blue&style=flat-square" alt="Forks">
  </a>
  <a href="https://github.com/leonardo-lacerda-data/sgv_melhorescompras/issues">
    <img src="https://img.shields.io/github/issues/leonardo-lacerda-data/sgv_melhorescompras?color=orange&style=flat-square" alt="Issues">
  </a>
  <a href="https://github.com/leonardo-lacerda-data/sgv_melhorescompras/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/leonardo-lacerda-data/sgv_melhorescompras?color=brightgreen&style=flat-square" alt="License">
  </a>
</p>

---

## 📘 Sobre o Projeto

O **SGV_MelhoresCompras** é um sistema relacional para **gerenciamento de vídeos, produtos e categorias** de um e-commerce.  
O objetivo do projeto é demonstrar conhecimentos em **modelagem de dados, SQL avançado, PL/SQL e administração de banco Oracle**.

---

## 🛢 Estrutura do Banco de Dados

- **Clientes** — cadastro e informações de contato  
- **Produtos** — catálogo de produtos  
- **Compras** — registro de pedidos e transações  
- **ItensCompra** — ligação entre produtos e pedidos  
- **SAC** — atendimento e relacionamento com o cliente  

---

## ⚙️ Estrutura do projeto

| Estrutura | Descrição |
|-------------|---------|
| **[SGV_Melhores_Compras_Projeto_Fisico](SGV_Melhores_Compras_Projeto_Fisico.pdf)** | Modelo de dados físico feito na ferramenta CASE Oracle Data Modeler e contém as Tabelas, Colunas e Relacionamentos físicos criados  para atender ao projeto SGV |
| **[mc_create.sql](mc_create.sql)** | Script contendo a criação das tabelas, colunas e relacionamentos do projeto SGV, bem como as tabelas corporativas MC (Melhores  Compras)|
| **[mc_inserdata.sql](mc_insertdata.sql)** | População dos dados nas tabelas |
| **[mc_inserdata.sql](mc_insertdata.sql)** | População dos dados nas tabelas |
| **[drop_tables.sql](drop_tables.sql)** | Script contendo o drop das tabelas (eliminação física) e sequences corporativas MC  (Melhores Compras) e do projeto SGV | 
| **[Consultas_DQL.sql](Consultas_DQL.sql)** | Script contendo as consultas no banco de dados| 
| **[Python](atendimento_SAC_Melhores_Compras.py)** | Integração SAC para o nível de satisfação do cliente |
| **Git / GitHub** | Versionamento de código |

---

## 🚀 Como Executar Localmente

### 1️⃣ Clone o repositório
```bash
git clone https://github.com/leonardo-lacerda-data/sgv_melhorescompras.git
cd sgv_melhorescompras
```
### 2️⃣ Execute o scprit DDL para criação das tabelas
[mc_create.sql](mc_create.sql)

### 3️⃣ Execute o scprit DML para inserção dos dados
[mc_inserdata.sql](mc_insertdata.sql)

### Caso queira limpar as tabelas execute
[drop_tables.sql](drop_tables.sql)

### 4️⃣ Para realizar consultas no banco de dados execute o script DQL
[Consultas_DQL.sql](Consultas_DQL.sql)

