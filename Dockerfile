# Stage 1: Build the application
FROM node:16-alpine AS build

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the entire source code
COPY . .

# Build the project
RUN npm run build


# Stage 2: Production image
FROM node:16-alpine

WORKDIR /app

# Install Medusa CLI globally
RUN npm install -g @medusajs/medusa-cli

# Copy built app from build stage
COPY --from=build /app .

# Expose Medusa port
EXPOSE 9000

# Run DB migrations and start server
CMD medusa migrations run && npm run start


