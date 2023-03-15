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
    depends_on:
      server:
        condition: service_healthy
    ports:
      - 80:80
    environment:
      - PORT=80
      - PROXY_URL=server:80
      - BURST=512
      - RATE=1
  server:
    image: some-random-server:latest
    healthcheck:
      test: curl --fail 'http://localhost:80' || exit 1
      interval: 1s
      timeout: 1s
      retries: 5
```
