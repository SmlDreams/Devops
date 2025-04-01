FROM node:16-slim AS base
WORKDIR /app
COPY package*.json tsconfig.json ./
ENV NODE_ENV=production
RUN npm install --silent
COPY . .
RUN npx tsc
RUN useradd -m appuser && chown -R appuser:appuser /app
USER appuser
EXPOSE 4000
CMD ["node", "dist/index.js"]