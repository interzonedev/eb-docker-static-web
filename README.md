# eb-docker-static-web

To build via the Dockerfile:
```
docker build -t boltgun69/eb-docker-static-web .
```

To run via the Dockerfile:
```
docker run -p 80:80 --name eb-docker-static-web boltgun69/eb-docker-static-web
```

To stop via the Dockerfile:
```
docker stop eb-docker-static-web
```

Explore the file system of the running container:
```
docker run -it boltgun69/eb-docker-static-web sh
```

Build and run the container via compose:
```
docker compose up --build
```

Stop the container via compose:
```
docker compose down
```
