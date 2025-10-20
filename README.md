<!-- PROJECT TITLE -->
<h1 align="center">🛒 SGV_MelhoresCompras</h1>

<p align="center">
  <b>Sistema de Gestão de Vendas e Compras</b><br>
  Projeto acadêmico desenvolvido para demonstrar habilidades em modelagem, SQL e administração de banco de dados Oracle.
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

O **SGV_MelhoresCompras** é um sistema relacional desenvolvido para **gerenciar o fluxo de compras, clientes e produtos** de um e-commerce.  
O objetivo do projeto é demonstrar conhecimentos em **modelagem de dados, SQL avançado, PL/SQL e administração de banco Oracle**.

> 🔗 Projeto criado como portfólio pessoal de estudos em **Banco de Dados** e **Engenharia de Dados**.

---

## 🛢 Estrutura do Banco de Dados

- **Clientes** — cadastro e informações de contato  
- **Produtos** — catálogo de produtos  
- **Compras** — registro de pedidos e transações  
- **ItensCompra** — ligação entre produtos e pedidos  
- **SAC** — atendimento e relacionamento com o cliente  

📄 O diagrama físico (ERD) está disponível em:  
[SGV_Melhores_Compras_Projeto_Fisico](SGV_Melhores_Compras_Projeto_Fisico.pdf)
[SGV_Melhores_Compras_Projeto_Fisico.pdf](https://github.com/user-attachments/files/23003969/SGV_Melhores_Compras_Projeto_Fisico.pdf)

---

## 🧠 Principais Recursos

- Scripts completos de criação (`mc_create.sql`) e inserção (`mc_insertdata.sql`)  
- Triggers e procedures PL/SQL para automação de processos  
- Consultas SQL complexas (`Consultas_DQL.sql`) para relatórios e análises  
- Script Python de integração com SAC (`atendimento_SAC_Melhores_Compras.py`)  
- Estrutura documentada e modular (scripts independentes)  

---

## ⚙️ Tecnologias Utilizadas

| Tecnologia | Função |
|-------------|---------|
| **Oracle Database 19c** | Armazenamento e gerenciamento dos dados |
| **SQL / PL-SQL** | Criação e manipulação do banco |
| **Python** | Automação e integração SAC |
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

