FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/src/index.html /usr/share/nginx/html
COPY --from=builder /app/src/photos.html /usr/share/nginx/html
COPY --from=builder /app/src/assets/img /usr/share/nginx/html/assets/img
COPY --from=builder /app/dist /usr/share/nginx/html/dist
