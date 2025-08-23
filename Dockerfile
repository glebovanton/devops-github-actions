FROM ubuntu:latest
LABEL authors="ag"
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm ci
COPY . .
EXPOSE 4545
CMD ["node", "src/index.js"]