# 🏦 Desafios Python - Extrato Bancário (Parte 1 e 2)

Este repositório contém dois desafios básicos em Python que simulam situações de um banco, envolvendo **transações financeiras** e **limpeza de extrato**.

Estou aprendendo Python agora, então esses exercícios foram muito úteis pra treinar lógica, `for`, `if`, listas e manipulação de strings.

---

## ✅ Desafio 1 - Calculando o saldo final do dia

### 📌 Objetivo
Receber uma linha com lançamentos bancários separados por vírgula, no formato:

- `R valor` → Receita (soma)
- `D valor` → Despesa (subtrai)

E calcular o saldo final do dia.

### 🧾 Exemplo

**Entrada:**
R 100.00,D 50.00,R 20.00

**Saída:**
70.00

### 🧠 Como funciona
- separa os lançamentos usando `split(',')`
- percorre cada lançamento com `for`
- verifica se é Receita ou Despesa (`if / elif`)
- soma ou subtrai no saldo
- imprime o saldo com 2 casas decimais usando `:.2f`

---

## ✅ Desafio 2 - Removendo transações duplicadas no extrato

### 📌 Objetivo
Receber uma linha com identificadores de transações separados por espaço e remover duplicatas, mantendo a ordem da primeira vez que apareceu.

### 🧾 Exemplo

**Entrada:**
TX1001 TX1002 TX1001 TX1003

**Saída:**
TX1001 TX1002 TX1003

### 🧠 Como funciona
- separa os identificadores usando `split()`
- percorre cada transação com `for`
- adiciona em uma lista apenas se ainda não existir (`if not in`)
- imprime tudo novamente usando `' '.join(...)`

---

## 🚀 Aprendizados principais

Esses desafios me ajudaram a entender melhor:

- como usar `for` de verdade
- como funciona `split()` e `join()`
- como remover duplicatas sem perder ordem
- como atualizar valores dentro de um loop
- importância da indentação no Python (sim, isso quebra tudo kkk)

---

## 🛠️ Tecnologias utilizadas
- Python 3

---

## ✨ Observação
Esses desafios fazem parte do meu processo de aprendizado em Python e lógica de programação.  
Feedbacks são bem-vindos!

