# Leitura da linha de identificadores de transações
entrada = input()
transacao = entrada.split(" ")
# TODO: Crie uma lista com as transações sem duplicatas, mantendo a ordem da primeira ocorrência
transacoes_unicas = []
# Dica: Percorra cada transação e adicione à lista apenas se ainda não estiver presente
for transacoes in transacao:
  if transacoes not in transacoes_unicas:
    transacoes_unicas.append(transacoes)
# print(' '.join(transacoes_unicas))  # Descomente após implementar a lógica
print(' '.join(transacoes_unicas))