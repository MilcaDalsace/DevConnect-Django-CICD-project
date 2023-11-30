#!/bin/bash

# Build the Docker image
docker build -t django-web-app .

# Run the Docker container
docker run -d -p 8000:8000 --name django-web-app  -v django_app_data:/app django-web-app:latest