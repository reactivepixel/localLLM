FROM ollama/ollama:latest

# Create non-root user + home
RUN useradd -m -u 1001 -s /bin/bash ollama && \
    mkdir -p /home/ollama/.ollama && \
    chown -R ollama:ollama /home/ollama

# Switch to the non-root user
USER ollama

# Tell Ollama to use the new home location (very important!)
ENV OLLAMA_HOST="0.0.0.0" \
    HOME="/home/ollama"

EXPOSE 11434

# Optional: if you want to pre-create models dir (not strictly needed)
# RUN mkdir -p /home/ollama/.ollama/models