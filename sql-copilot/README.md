# SQL com Microsoft Copilot

Projeto desenvolvido durante o curso 
"Utilizando Microsoft Copilot para escrever consultas SQL".

# E-Cards – Pokémon TCG (Database Project)

Este projeto foi desenvolvido como parte de um desafio prático utilizando **GitHub Copilot** para apoiar a modelagem e criação de um banco de dados relacional em **MySQL/MariaDB**, usando como tema cartas do **Pokémon Trading Card Game (TCG)**.

A ideia do projeto é estruturar informações presentes em uma carta Pokémon (como HP, tipo, estágio, ataques e coleção) e transformá-las em um modelo de dados organizado, escalável e fácil de consultar.

---

## 🎯 Objetivo

- Modelar um banco de dados relacional para cartas Pokémon TCG  
- Utilizar **GitHub Copilot** como apoio na criação de tabelas, seeds, views e scripts  
- Praticar boas práticas de organização de scripts SQL  
- Facilitar consultas através de uma *view* consolidada  

---

## 🧠 Processo com Copilot

O Copilot foi utilizado como ferramenta de apoio ao longo do projeto, principalmente para:

- Geração de scripts SQL a partir de prompts em linguagem natural  
- Sugestões de modelagem relacional  
- Criação de dados iniciais (*seeds*)  
- Criação de *views* para facilitar consultas  

⚠️ **Observação importante:**  
Durante o envio dos prompts ao Copilot, os marcadores `[ação]`, `[contexto]` e `[informações]` foram removidos, mantendo apenas o texto final, conforme orientação para melhor interpretação da ferramenta.

---

## 🖼️ Assets

A pasta `assets/` contém duas imagens utilizadas como referência:

- Uma imagem explicativa com os campos de uma carta Pokémon TCG  
- Uma imagem da carta (em alta resolução)  

Apesar das tentativas, o Copilot não conseguiu interpretar corretamente os textos da carta, pois aceita apenas imagens em **baixa resolução**, o que impossibilitou a leitura detalhada dos dados da carta 😄.

---

## 🗂️ Estrutura do Projeto
```
e-cards/
├── assets/
│   ├── Card_Info.SVG.jpg
│   └── charizard_card.jpg
│
├── db_scripts/
│   ├── tables/
│   │   └── 001_create_table.sql
│   │
│   ├── seeds/
│   │   ├── 001_initial_seeds.sql
│   │   ├── 002_bulk_cards_1.sql
│   │   ├── 003_bulk_cards_2.sql
│   │   └── 004_bulk_cards_3.sql
│   │
│   └── views/
│       └── 001_view_cards.sql
│
├── prompts/
│   └── tcg-cards.txt
```

---

## 🧱 Modelagem do Banco de Dados

### Tabelas principais:

- **tbl_collections**  
  Armazena informações sobre as coleções do Pokémon TCG  

- **tbl_types**  
  Armazena os tipos dos Pokémon (Fire, Water, Grass, etc.)

- **tbl_stages**  
  Armazena os estágios de evolução (Basic, Stage 1, Stage 2)

- **tbl_cards**  
  Armazena as cartas Pokémon e referencia as demais tabelas via **chaves estrangeiras**

---

## 🌱 Seeds (Dados Iniciais)

Foram criados scripts de *seed* para:

- Coleções clássicas (Base Set, Jungle, Fossil)  
- Tipos de Pokémon  
- Estágios de evolução  
- Mais de **80 cartas Pokémon**, distribuídas em múltiplos arquivos para melhor organização  

---

## 👁️ View de Consulta

Foi criada a view:

vw_cards_detalhado

Essa view consolida os dados da tabela `tbl_cards`, substituindo os IDs das chaves estrangeiras pelos seus respectivos nomes (tipo, estágio e coleção), facilitando consultas e análises.

---

## 🔄 Migration Script

O arquivo `to_migration.ps1` foi desenvolvido para:

- Ler todos os arquivos `.sql` da pasta  
- Ordená-los pelo nome  
- Gerar automaticamente um arquivo `migration.sql` único  

### Execução:
Basta copiar o caminho do arquivo e executá-lo no terminal do VSCode.

⚠️ **Observação:**  
Durante a geração do `migration.sql`, ocorreu um problema de encoding, fazendo com que palavras como *Pokémon* fossem exibidas como `PokÃ©mon`.  
Apesar disso, o script foi gerado corretamente e o processo de migração funcionou como esperado.

---

## 🧑‍🏫 Professor

Projeto desenvolvido durante o curso ministrado pelo **Felipão**.

---

## 📌 Observações Finais

Este projeto tem fins educacionais e foi essencial para praticar:

- Modelagem de dados  
- Organização de scripts SQL  
- Uso de IA como ferramenta de apoio técnico  
- Versionamento e documentação no GitHub  


