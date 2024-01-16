# Use Alpine Linux as the base image
FROM alpine:3.19

# Set the working directory in the container
WORKDIR /app

# Install Node.js and npm
RUN apk add --update nodejs npm

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

