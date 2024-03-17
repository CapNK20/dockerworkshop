FROM node:18

WORKDIR /frontend
COPY package.json package-lock.json ./
RUN npm ci
COPY . .

CMD npm run dev -- --port 3000 --host frontend
