# Mulai dengan base image
FROM node:14-alpine

# Set Docker image
WORKDIR /app

# Copy aplikasi ke Docker image
COPY . .

# ENV
ENV NODE_ENV=production
RUN npm install --production

# Port
EXPOSE 3001

# Running
CMD [ "npm", "start" ]
