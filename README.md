# Docker container for Autogen Studio

<br/>

<div align="center">

[![GitHub last commit](https://img.shields.io/github/last-commit/lludlow/autogen-studio?color=purple&style=for-the-badge)](https://github.com/lludlow/autogen-studio/commits/master 'Commit History')
[![Release](https://img.shields.io/github/v/release/lludlow/autogen-studio?style=for-the-badge)](https://github.com/lludlow/autogen-studio/releases 'Repo releases')\
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?style=for-the-badge&logo=renovatebot&logoColor=white)](https://github.com/renovatebot/renovate)
</div>

## Running the docker container

```
docker run -d -p 8081:8081 -e "OPENAI_API_KEY=YOUR_API_KEY" ghcr.io/lludlow/autogen-studio
```

mount the location for database.sql and files
```
docker run -d -p 8081:8081 -e "OPENAI_API_KEY=YOUR_API_KEY" -v "./data:/app/.autogenstudio" ghcr.io/lludlow/autogen-studio
```