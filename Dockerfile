# Use Node.js LTS base image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the project files
COPY . .

# Expose the port your app runs on (adjust if different)
EXPOSE 3000

# Default command for production
CMD ["npm", "run", "prod"]
