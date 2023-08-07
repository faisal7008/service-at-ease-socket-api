FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --production --frozen-lockfile
COPY . .
EXPOSE 9010
CMD [ "npm", "start" ]