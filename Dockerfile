# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which your Node.js application listens
EXPOSE 3000

# Specify the command to run your Node.js application
CMD ["node", "qw"]
