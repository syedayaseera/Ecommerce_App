# Use the official NGINX image to serve static files
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default NGINX index page
RUN rm -rf /usr/share/nginx/html/*

# Copy the content of the current directory (the files from your e-commerce-project) into the container
COPY . .

# Expose the port that NGINX will run on
EXPOSE 80

# Start NGINX to serve the files
CMD ["nginx", "-g", "daemon off;"]
