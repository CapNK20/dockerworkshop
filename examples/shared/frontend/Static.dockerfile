FROM node:18 AS build

WORKDIR /frontend
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx

WORKDIR /usr/share/nginx/html
COPY --from=build /frontend/dist .
