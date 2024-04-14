# Docker container for Autogen Studio

## Running the docker container

```
docker run -d -p 8081:8081 -e "OPENAI_API_KEY=YOUR_API_KEY" ghcr.io/lludlow/autogen-studio
```

mount the location for database.sql and files
```
docker run -d -p 8081:8081 -e "OPENAI_API_KEY=YOUR_API_KEY" -v "./data:/app/.autogenstudio" ghcr.io/lludlow/autogen-studio
```