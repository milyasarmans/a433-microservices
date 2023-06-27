#!/bin/bash
# membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# melihat daftar image
docker image ls

# mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 milyasarmans/item-app:v1

# login ke Docker Hub
docker login

# mengunggah image ke Docker Hub 
docker push milyasarmans/item-app:v1
