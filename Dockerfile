FROM node:10.9.0-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
ENV NODE_ENV=deployment
CMD ["npm", "start"]