#!/bin/bash

# Stop the Docker container
docker stop django-web-app

# Remove the Docker container
docker rm django-web-app

# Optionally, remove the Docker image
docker rmi django-web-app