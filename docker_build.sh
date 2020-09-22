#!/bin/bash

set -eEux

ROOT="$(pwd -P)"

cd "${ROOT}/greeter_client"
GOOS=linux go build -o ./app .
docker build -t app/greeter_client:v5 .

cd "${ROOT}/greeter_server"
GOOS=linux go build -o ./app .
docker build -t app/greeter_server:v2 .
