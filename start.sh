#!/bin/bash

# Construa a imagem
echo "Construindo a imagem..."
docker-compose build

# Suba os contêineres
echo "Subindo os contêineres..."
docker-compose up -d

chmod -R 755 ./site

echo "Ambiente Pronto!"
