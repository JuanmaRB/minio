#!/bin/bash
mkdir -p /mnt/data

docker run \
   -p 9000:9000 \
   -p 9090:9090 \
   --name minio \
   -v ./data:/data \
   -v ./certs:/root/.minio/certs \
   -v ./bin:/root/.local/bin \
   -e "MINIO_ROOT_USER=administrador" \
   -e "MINIO_ROOT_PASSWORD=Admin.123" \
   quay.io/minio/minio server /data --console-address ":9090"
