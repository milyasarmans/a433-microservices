# Mulai dari base image
FROM node:14-alpine

# Setel direktori kerja di image Docker
WORKDIR /app

# Salin sisa aplikasi ke image Docker
COPY . .

# ENV
ENV NODE_ENV=production
RUN npm install --production
EXPOSE 3000
CMD [ "npm", "start" ]
