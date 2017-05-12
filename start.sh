#!/bin/bash

docker build -t acmemud/mudlib:1.0 build/mudlib
docker build -t acmemud/driver:3.5.0 build/driver
docker build -t acmemud/mud:3.5.0 build/mud
docker-compose up -d
