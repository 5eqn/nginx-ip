# Nginx IP Rate Limiter

Out-of-the-box IP Rate Limiter with Nginx.

## Getting Started

Build with:

```bash
DOCKER_BUILDKIT=1 docker build -t nginx-ip .
```

Recommended with Docker Compose.
Assuming server runs at port 80,
typical configuration is like:

```docker-compose
version: "3.8"

services:
  nginx:
    image: nginx-ip:latest
    ports:
      - 80:80
  server:
    image: some-random-server:latest
```
