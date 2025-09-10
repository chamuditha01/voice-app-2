# Use modern Node LTS (boron = Node 6 is too old!)
FROM node:18

LABEL maintainer="rofl256"

# Create app directory
WORKDIR /opt/app

# Install app dependencies
COPY package.json package-lock.json* ./
RUN npm install --production

# Bundle app source
COPY . .

# Expose backend port (your server listens on 3001, not 8080)
EXPOSE 3001

# Start the app
CMD ["node", "index.js"]
