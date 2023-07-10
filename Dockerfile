FROM node:lts AS build

WORKDIR /app

COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 4000
CMD ["npm", "run", "dev", "--", "--port=4000", "--host"]