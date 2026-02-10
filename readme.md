# Getting Started

Build Containers
```
docker compose up -d
```

Pull Model
```
docker exec -it ollama ollama pull gpt-oss:20b
```

### Other Models to Choose From (from ollama)

[List of current models](https://ollama.com/search?c=tools) Choose a model and run the command below to pull it.

```
docker exec -it ollama ollama pull <model_name>:<size>
```

Example:
```
docker exec -it ollama ollama pull qwen3:8b
```
# Use it!

Open your browser to http://127.0.0.1:8080 to start using the UI.

# Start/ Stop the Services Commands
```
docker compose up -d
docker compose down
```

# Burn it All Down
```
docker compose down --volumes --rmi all --remove-orphans
```