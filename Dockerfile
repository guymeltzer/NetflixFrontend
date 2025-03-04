# Use an official Node.js runtime as a base image
FROM node:14.0.0

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the app
RUN npm run build

# Expose port 3000 (or another port if specified in the README)
EXPOSE 3000

# Define the command to start the app
CMD ["npm", "start"]
#