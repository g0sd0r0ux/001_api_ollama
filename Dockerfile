# Usa una imagen base Ubuntu
FROM ubuntu:latest

# Instala dependencias
RUN apt update && apt install -y curl

# Instala Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Descarga modelos (opcional, puedes hacerlo manualmente después)
RUN ollama pull mistral
RUN ollama pull deepseek-coder
RUN ollama pull llama3

# Instalar dependencias de python desde el archivo 'requirements.txt'
RUN pip install -r requirements.txt

# Expone el puerto 11434 (puerto predeterminado de Ollama)
EXPOSE 11434

# Comando por defecto al iniciar el contenedor
CMD ["ollama", "serve"]