# 💰 Calculando o Saldo Diário (Python)

Este projeto faz parte de um desafio de Python onde o objetivo é calcular o **saldo final do dia** a partir de lançamentos de **receitas** e **despesas**.

Estou no início dos estudos em Python, então este desafio foi muito importante para entender melhor:
- laços (`for`)
- condicionais (`if / elif`)
- manipulação de strings
- e principalmente **escopo de variáveis**

---

## 🧠 Descrição do desafio

Cada lançamento vem como uma string no formato:
R 100.00
D 50.00

Onde:
- `R` significa **Receita**
- `D` significa **Despesa**

Os lançamentos são recebidos em **uma única linha**, separados por vírgula, por exemplo:

R 100.00,D 50.00,R 20.00

O programa deve:
- somar todas as receitas
- subtrair todas as despesas
- imprimir o saldo final com **duas casas decimais**

---

## 🛠️ Como o código funciona

1. Lê a entrada do usuário
2. Divide os lançamentos usando a vírgula
3. Percorre cada lançamento com um `for`
4. Se o tipo for:
   - `"R"` → soma o valor ao saldo
   - `"D"` → subtrai o valor do saldo
5. No final, imprime o saldo formatado com duas casas decimais

---

## 🧪 Exemplo

### Entrada
R 100.00,D 50.00,R 20.00

### Saída
70.00

---

## 🧩 Código

```python
# Lê a linha de lançamentos do stdin
entrada = input().strip()

# Inicialize o saldo do dia
saldo = 0.0

# Divide os lançamentos pela vírgula
lancamentos = entrada.split(',')

for lancamento in lancamentos:
    tipo, valor = lancamento.strip().split()
    valor = float(valor)
    if tipo == "R":
        saldo = saldo + valor
    elif tipo == "D":
        saldo = saldo - valor

# Imprima o saldo final com duas casas decimais
print(f"{saldo:.2f}")
```
🚀 Aprendizados

 - Python usa indentação, não chaves

 - Nem toda alteração de variável precisa de global

 - Um único saldo pode ser atualizado várias vezes

 - Pequenos erros de lógica fazem parte do processo 😄

✨ Observação final

Este projeto faz parte da minha jornada de aprendizado em Python e Data.
Feedbacks são sempre bem-vindos!
