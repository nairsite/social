FROM node:alpine
WORKDIR /app
COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm install
COPY . .
# COPY ./src ./src
# COPY ./.env ./
# COPY ./config.js ./
CMD ["npm", "start"]