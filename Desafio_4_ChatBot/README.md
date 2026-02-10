# 🎙️ Assistente de Voz Multi-Idiomas com Whisper + ChatGPT

> 📌 **Aviso / Créditos:** Este Desafio foi realizado durante um **Lab prático guiado**, com fins educacionais.  
> O notebook e a estrutura principal do código foram desenvolvidos como parte do laboratório, e este repositório representa minha execução, acompanhamento e aprendizado durante a atividade.

Este projeto simula um **assistente de voz**, capaz de gravar áudio, transcrever automaticamente, gerar respostas usando IA generativa e retornar a resposta em áudio.

O fluxo principal é: **fala → texto → IA → áudio**.

---

## 🚀 Objetivo

Criar um assistente que seja capaz de:

- 🎤 Capturar áudio diretamente do navegador (Google Colab)
- 📝 Transcrever áudio utilizando **Whisper**
- 🤖 Enviar a transcrição para a API da OpenAI (**ChatGPT**)
- 🔊 Transformar a resposta em áudio utilizando **gTTS**

---

## ✨ Funcionalidades

- Gravação de áudio pelo navegador
- Transcrição automática com Whisper
- Resposta gerada por ChatGPT via OpenAI API
- Conversão de texto em fala (Text-to-Speech)
- Suporte para múltiplos idiomas

---

## 🧠 Tecnologias utilizadas

- **Python**
- **Google Colab**
- **Whisper (OpenAI)**
- **OpenAI API**
- **gTTS**
- **JavaScript** (MediaRecorder API para gravação de áudio no Colab)

---

## 📌 O que eu aprendi com este Lab

Durante este laboratório, tive contato prático com vários conceitos importantes, como:

- Uso de **funções e variáveis em Python** aplicadas em um projeto real
- Primeira experiência instalando e utilizando **bibliotecas externas** em Python
- Configuração e utilização de uma **API Key da OpenAI**
- Entendimento sobre consumo de API: mesmo quando o código apresenta erros, algumas requisições podem ser contabilizadas, o que pode consumir o limite de uso da chave (foi necessário gerar uma nova chave para continuar a execução do Lab)

Esse projeto foi essencial para entender como diferentes ferramentas podem ser integradas em um fluxo completo de IA aplicada.

---

## ⚙️ Como executar o projeto

### 1️⃣ Abrir no Google Colab

Este projeto foi feito para rodar no **Google Colab**, pois utiliza recursos específicos do ambiente (execução de JavaScript no navegador para gravação de áudio).

---

### 2️⃣ Instalar dependências

No notebook, as bibliotecas são instaladas automaticamente com:

```bash
pip install git+https://github.com/openai/whisper.git
pip install openai==0.28
pip install gTTS
```
### 3️⃣ Configurar a API Key da OpenAI

Para gerar respostas com o ChatGPT, é necessário configurar uma API Key:

```python
import os
os.environ["OPENAI_API_KEY"] = "SUA_CHAVE_AQUI"
```
📌 Para criar sua chave:
https://platform.openai.com/account/api-keys

### 4️⃣ Selecionar o idioma

No notebook é possível definir o idioma desejado:

language = "pt"


Exemplos:
| Idioma    | Código |
| --------- | ------ |
| Português | pt     |
| Inglês    | en     |
| Espanhol  | es     |
| Francês   | fr     |

### 5️⃣ Executar o notebook

Depois de configurar tudo, execute as células na ordem para:

gravar áudio

transcrever com Whisper

gerar resposta com ChatGPT

transformar resposta em áudio

### 🔁 Fluxo do projeto

**🎤 Usuário grava áudio**<br>
⬇️<br>
**📝 Whisper converte fala em texto**<br>
⬇️<br>
**🤖 ChatGPT gera resposta baseada no texto**<br>
⬇️<br>
**🔊 gTTS converte a resposta em áudio**<br>

### 📂 Arquivos gerados

Durante a execução, o notebook cria arquivos como:

`request_audio.wav` → áudio gravado pelo usuário

`response_audio.wav` → áudio gerado como resposta

### ⚠️ Observações importantes

 - Este projeto depende do Google Colab, pois utiliza JavaScript para capturar áudio diretamente do navegador.

 - Para rodar localmente (VSCode), seria necessário substituir a parte de gravação por bibliotecas específicas de áudio (por exemplo: sounddevice) ou carregar um arquivo de áudio manualmente.

### 📚 Referência utilizada

O código de gravação de áudio no Colab foi baseado no seguinte repositório:

🔗 https://gist.github.com/korakot/c21c3476c024ad6d56d5f48b0bca92be

### 👩‍💻 Sobre este repositório

Este repositório representa meu aprendizado prático durante o laboratório e faz parte do meu desenvolvimento na área de Dados e Inteligência Artificial, explorando conceitos como:

 - Processamento de áudio

 - Transcrição automática

 - Integração com IA generativa

 - Conversão de texto em fala
