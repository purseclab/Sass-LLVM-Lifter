#!/bin/bash

cd ..

# Remove existing container if exists (optional)
docker rm -f my-sass-lifter || true

docker build -t sass-lifter:latest -f Dockerfile .
docker run -d -v "$(pwd):/app" -p 127.0.0.1:8000:8000 --name my-sass-lifter sass-lifter:latest
docker logs -f my-sass-lifter