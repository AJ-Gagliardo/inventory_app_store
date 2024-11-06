# Use the official Node.js 16 as a parent image
FROM node:16-slim

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json ) to /app
COPY server/package*.json ./server/

# Install any needed packages specified in package.json
RUN cd server && npm install

# Bundle app source inside Docker image
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV NODE_ENV production

# Run the app when the container launches
CMD ["node", "server/index.js"]

## copied this code, I am still not really good with docker, working on it