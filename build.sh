#!/bin/bash

docker build -t acmemud/mudlib:1.0 build/mudlib
docker build -t acmemud/driver:3.3 build/driver
docker build -t acmemud/mud:1.0 build/mud
