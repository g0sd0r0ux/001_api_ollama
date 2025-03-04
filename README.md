# Proyecto Docker Para Ejecutar Ollama
1. Se instalarán las dependencias necesarias, además, de instalar los 3 modelos: mistral, llama3 y deepseek-coder
2. Debe ajustar a sus necesidades, sin embargo, los modelos son recomendable utilizarlos si posee más de 12GB de RAM, además de que el entorno de intalación es Ubuntu que tiene compatibilidad con WSL.

## Construir imagen para ejecutar Ollama
```bash
docker build -t mi-proyecto-image .

