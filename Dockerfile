# Use the official Node.js base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port your app runs on (change if needed)
EXPOSE 3000

# Run the app
CMD [ "node", "index.js" ]
