# Use Node image
FROM node:20

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose Vite port
EXPOSE 5173

# Start project
CMD ["npm", "run", "dev", "--", "--host"]