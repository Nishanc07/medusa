# Stage 1
FROM node:16-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build


# Stage 2
FROM node:16-alpine
WORKDIR /app
RUN npm install -g @medusajs/medusa-cli
COPY --from=build /app .
EXPOSE 9000
CMD medusa migrations run && npm run start


