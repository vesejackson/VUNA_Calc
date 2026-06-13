# Use Node.js 20 as base image
FROM node:20

# Set working directory inside the container
WORKDIR /app

# Copy all source code into the container
COPY . .

# Install dependencies (serve — lightweight static file server)
RUN npm install -g serve

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["serve", "-s", ".", "-l", "3000"]
