#Criação de Migrations Automatizadas
#Pegar o diretório atual
#Como faço isso? Defino uma variável, que para ser feita inicia-se com o símbolo de sifrão $ seguinte do nome desejado.
#Dentro da variável guardamos o caminho.
#Como eu faço para pegar o caminho? Passo um -Path e vou pegar o $MyInvocation que é uma constante do próprio PowerShell. 
#Ou seja, quando eu estiver invocando eu quero que ele puxe o comando"MyCommand", e qual comando? O comando de definição ".Definition".
#Eu não quero que ele pegue apenas o diretório atual, mas que ele pegue o caminho de um por um dos docs dentro da pasta "seeds", como faço isso?
#Para eu pegar os subdiretorios dele, então eu digo que quero pegar os filhos dele, os -Parent.
#E para eu guardar tudo isso em um vetor, uso no começo (depois do igual) Split-Path.
#O Split-Path vai ler tudo e guardar em uma forma de listagem dentro da variável que criamos ($scriptDirectory)
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#No final eu quero jogar um arquivo de saída, então:

#Arquivo de saída com todos sql
#Para eu criar esse arquivo eu vou chamá-lo de $outputFile. E aí eu vou juntar todos os meus caminhos com Join-Path.
#E como estamos lidando com diretórios precisamos usar o -Path. E onde estão os diretórios? Estão em $scriptDirectory.
#E pegarei todos os -ChildPath (pegar todo o conteúdo dele) e no final eu salvarei em um arquivo chamado "migration.sql"

$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

#Verifica se arquivo já existe, se existir deleta.

if (Test-Path $outputFile){ #Se o #outputFile existir
    Remove-Item $outputFile #remova-o
}

#Pega Conteúdo dos arquivos
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name

#Concatena Arquivos
foreach($file in $sqlFiles){
    Get-Content $file.FullName | Out-file -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
}

#Para aparecer uma mensagem na tela quando finalizar:
Write-Host "Todos os arquivos foram combinados em $outputFile"

#Deu ruim por conta de acento. "Pokémon".
