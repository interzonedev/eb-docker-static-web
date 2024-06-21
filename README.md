# eb-docker-static-web

Demo Docker app for bundling a static website to be served by Nginx.

Used example application from 
[https://www.sitepoint.com/bundle-static-site-webpack](https://www.sitepoint.com/bundle-static-site-webpack)

## NodeJS Commands

To bundle the app:
```
npm run build
```

To clean the bundle:
```
npm run clean
```

To start a local server to host the app:
```
npm run server
```

Note:
The `npm test`, `npm start`, `npm restart`, and `npm stop` commands are all aliases for `npm run xxx`.

For all other scripts use `npm run xxx`.

## Docker Commands

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
