# Use an official lightweight Node.js 16 image.
# https://hub.docker.com/_/node
FROM node:16.8-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy local code to the container image.
COPY . .

# Build the app
RUN npm run build

# Run the web service on container startup.
CMD [ "npm", "run", "start" ]
