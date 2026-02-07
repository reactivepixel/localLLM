FROM ollama/ollama:latest

RUN useradd -m -u 1001 ollama && \
    chown -R ollama:ollama /root/.ollama

USER ollama
EXPOSE 11434