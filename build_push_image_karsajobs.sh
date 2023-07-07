#!/bin/bash
# membuat Docker image dari Dockerfile yang tadi dibuat
docker build -t karsajobs:latest .

# melihat daftar image
docker image ls

# mengubah nama image agar sesuai dengan format Docker Hub
docker tag karsajobs:latest milyasarmans/karsajobs:latest

# login ke Docker Hub
docker login

# mengunggah image ke Docker Hub 
docker push milyasarmans/karsajobs:latest
