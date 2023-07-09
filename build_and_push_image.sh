#!/bin/bash
# membuat Docker image dari Dockerfile yang dibuat
docker build -t order-service:latest .

# melihat daftar image
docker image ls

# mengubah nama image agar sesuai dengan format Docker Hub
docker tag order-service:latest milyasarmans/order-service:latest

# login ke Docker Hub
docker login

# mengunggah image ke Docker Hub 
docker push milyasarmans/order-service:latest
