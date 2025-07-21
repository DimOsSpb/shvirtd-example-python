#!/bin/bash

# Настройки по умолчанию

VM_IP=158.160.114.0
VM_USER=odv
REPO_URL=https://github.com/DimOsSpb/shvirtd-example-python.git
APP_DIR=/opt/app_example

ssh -i ~/.ssh/netology -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 $USER@$VM_IP \
    "sudo mkdir -p $APP_DIR && \
    sudo chown \$USER:\$USER $APP_DIR && \
    cd $APP_DIR && \
    git clone $REPO_URL .
    docker compose up -d"

