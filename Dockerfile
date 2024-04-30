FROM node:alpine
# Set the working directory in the container
WORKDIR /app
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the remaining application code to the working directory
COPY . .
# Set environment variables
ENV HOST=0.0.0.0
ENV PORT=4200
# Expose port 4200
EXPOSE 4200
# Command to run the application
CMD ["npm", "start"]
