#!/bin/bash

set -e

# Запуск сервера ollama
ollama serve &

pid=$!

sleep 5

# Установка модели для эмбединга
ollama pull nomic-embed-text
# Установка языковой модели для чат бота
ollama pull qwen2.5:14b

wait $pid
