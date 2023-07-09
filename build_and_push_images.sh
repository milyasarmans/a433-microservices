#!/bin/bash
# membuat Docker image dari Dockerfile yang dibuat
docker build -t shipping-service:latest .

# melihat daftar image
docker image ls

# mengubah nama image agar sesuai dengan format Docker Hub
docker tag shipping-service:latest milyasarmans/shipping-service:latest

# login ke Docker Hub
docker login

# mengunggah image ke Docker Hub 
docker push milyasarmans/shipping-service:latest
