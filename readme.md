# Getting Started

Build Containers
```
docker compose up -d
```


Pull Model
```
docker exec -it ollama ollama pull gpt-oss:20b
```

> Explore different models!
> qwen3:8b is a good one for general purpose use, it's fast and accurate.
> # for code generation, use gpt-oss:20b

Open your browser to http://127.0.0.1:8080 to start using the UI.

# Burn it All Down

```
# Stop all containers
docker compose down
docker stop $(docker ps -aq) 2>/dev/null; docker rm $(docker ps -aq) 2>/dev/null; docker volume rm $(docker volume ls -q)
```