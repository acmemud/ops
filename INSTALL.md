# Installation and setup

## Build images (temporary)

Once images are pused to DockerHub, this won't be
necessary. But for the near term, we have to build our
custom images locally before we can use them.

```
docker build -t acmemud/mudlib:1.0 build/mudlib
docker build -t acmemud/ldmud:3.5.0 build/ldmud
```

## Start the containers

```
docker-compose up -d
```
