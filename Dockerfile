# Use the official Node.js image from Docker Hub
FROM node:18

# Create and set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Expose the port your app runs on
EXPOSE 4000

# Define environment variables if needed
# ENV NODE_ENV=production

# Command to run the app
CMD ["node", "index.js"]
