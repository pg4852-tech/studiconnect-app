# Use a lightweight Nginx image
FROM nginx:1.25-alpine

# Set working directory to Nginx's default web root
WORKDIR /usr/share/nginx/html

# Remove default welcome page
RUN rm -f index.html

# Copy all frontend files into the container
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
