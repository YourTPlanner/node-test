# Use an official Node.js runtime as a base image
FROM node:18-alpine

# Set the working directory
WORKDIR /src

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy your app code
COPY . .

# Expose the port (match your app)
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
