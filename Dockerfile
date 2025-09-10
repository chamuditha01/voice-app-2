FROM node:18

WORKDIR /opt/app

# Copy backend package files
COPY package*.json ./

RUN npm install

# Copy everything (backend + frontend source)
COPY . .

# Build frontend if needed
RUN npm run build   # <-- this generates /build

# Expose Express port
EXPOSE 8080

CMD ["npm", "start"]
