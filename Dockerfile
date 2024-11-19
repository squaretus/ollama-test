FROM ollama/ollama:0.4.0

WORKDIR /app

RUN apt update \
    && apt install -y git
