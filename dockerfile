# Use the official Node.js environment image
FROM node:16-slim

# Set the working directory in the container to /app
WORKDIR /app

# Install server dependencies
COPY server/package*.json ./server/
RUN cd server && npm install

# Install client dependencies and build the client
COPY client/package*.json ./client/
RUN cd client && npm install && npm run build

# Copy the server code
COPY server/ ./server/

# Copy the built React app
COPY client/build/ ./client/build/

# Expose the port the app runs on
EXPOSE 3000

# Command to run your app
CMD ["node", "server/index.js"]
