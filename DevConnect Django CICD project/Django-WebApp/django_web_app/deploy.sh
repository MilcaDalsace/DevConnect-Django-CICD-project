#!/bin/bash

# Asking the user to enter the version they want to push to the artifact repository
read -p "Enter the version you want to push to artifact: " version

# Set the image name and artifact repository image path
image_name="milca-dalsace-django-app:${version}"
artifact_registry_image="me-west1-docker.pkg.dev/devconnect-406515/milca-dalsace-artifacts/milca-dalsace-django-app:${version}"

# Authenticate with Google Cloud
gcloud config unset auth/impersonate_service_account
gcloud auth login

# The command configures Docker to work with the specified registry
gcloud auth configure-docker me-west1-docker.pkg.dev

# Build, tag, and push the Docker image
docker build -t ${image_name} .
docker tag ${image_name} ${artifact_registry_image}
docker push ${artifact_registry_image}