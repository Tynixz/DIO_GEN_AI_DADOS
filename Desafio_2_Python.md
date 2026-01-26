# 📈 Desafio Python – Análise de Desempenho de Ação

## 🧠 Contexto

Você foi contratado como **analista júnior em uma corretora de valores** que está desenvolvendo um sistema simples para auxiliar investidores iniciantes. O objetivo é identificar rapidamente se uma ação teve **alta**, **baixa** ou permaneceu **estável** ao longo do dia, com base nos preços de abertura e fechamento.

---

## 🎯 Objetivo do Desafio

Criar um programa em **Python** que:

* Leia **dois valores inteiros positivos** (preço de abertura e preço de fechamento)
* Compare esses valores
* Exiba:

  * `ALTA` → se o preço de fechamento for maior que o de abertura
  * `BAIXA` → se o preço de fechamento for menor que o de abertura
  * `ESTAVEL` → se os valores forem iguais

⚠️ **Restrições**:

* Não utilizar bibliotecas externas
* Considerar apenas os dois valores fornecidos na entrada, separados por espaço

---

## 📥 Entrada

Uma única linha contendo **dois números inteiros positivos separados por espaço**, representando:

```
preco_abertura preco_fechamento
```

---

## 📤 Saída

Uma única palavra:

* `ALTA`
* `BAIXA`
* `ESTAVEL`

De acordo com a comparação entre os valores de abertura e fechamento.

---

## 🧪 Exemplos

| Entrada | Saída   |
| ------- | ------- |
| 10 15   | ALTA    |
| 20 18   | BAIXA   |
| 30 30   | ESTAVEL |
| 5 5     | ESTAVEL |

---

## 🧩 Solução em Python

```python
# Lê a linha de entrada e separa os valores
entrada = input("")
abertura_str, fechamento_str = entrada.split(" ")

# Converte os valores para inteiros
abertura = int(abertura_str)
fechamento = int(fechamento_str)

if abertura > fechamento:
    print("BAIXA")
elif abertura < fechamento:
    print("ALTA")
else:
    print("ESTAVEL")
```

---

## 💡 Observações

* Este desafio foi importante para praticar **lógica condicional básica**, usando apenas estruturas simples do Python.
* A leitura da entrada e a conversão dos valores ajudaram a entender melhor como o Python lida com dados vindos do usuário.
* Mesmo sendo um problema simples, ele representa um cenário real do mercado financeiro, o que facilita a conexão entre programação e negócio.

---

## 📚 O que eu aprendi com esse desafio

* Como **ler múltiplos valores em uma única linha** usando `input()` e `split()`
* A importância de **converter corretamente os tipos de dados** antes de compará-los
* Como utilizar estruturas condicionais (`if`, `elif`, `else`) para tomar decisões no código
* Que problemas simples também fazem parte do dia a dia de quem trabalha com dados e sistemas financeiros

✨ Desafio concluído com sucesso e servindo como primeiro passo prático no aprendizado de Python!
