#!/bin/bash
# membuat Docker image dari Dockerfile yang tadi dibuat
docker build -t karsajobs-ui:latest .

# melihat daftar image
docker image ls

# mengubah nama image agar sesuai dengan format Docker Hub
docker tag karsajobs-ui:latest milyasarmans/karsajobs-ui:latest

# login ke Docker Hub
docker login

# mengunggah image ke Docker Hub 
docker push milyasarmans/karsajobs-ui:latest
