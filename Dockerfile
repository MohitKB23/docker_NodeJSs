# Use official Node.js runtime as base image
FROM node:21-alpine

#set the working directory for the container
WORKDIR /usr/src/app

#copy package.json and package-lock.json to the working dir.
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port which your node.js app runs
EXPOSE 3000

# Command to run your node.js application
CMD ["npm", "start"]