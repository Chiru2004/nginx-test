# Step 1: Use the official Nginx image as the base
FROM nginx:alpine

# Step 2: (Optional) Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your website content into the Nginx container
# This assumes your HTML files are in the root or a 'dist' folder
COPY . /usr/share/nginx/html

# Step 4: Expose port 80 to the outside world
EXPOSE 80

# Step 5: Start Nginx in the foreground (default behavior)
CMD ["nginx", "-g", "daemon off;"]
