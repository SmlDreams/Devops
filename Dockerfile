FROM node:16-slim AS base
WORKDIR /app
COPY package*.json tsconfig.json /app/
RUN npm install --production --silent
COPY . /app/
RUN npm install -g typescript && tsc
EXPOSE 4000
CMD ["node", "dist/index.js"]
