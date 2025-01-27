FROM node:18.15.0
WORKDIR /app
COPY /src/package*.json ./
RUN npm install
COPY /src/. .
EXPOSE 8080
CMD ["node","server.js"]