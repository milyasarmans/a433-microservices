#base image node versi 14
FROM node:14-alpine

#working directory
WORKDIR /app

#menyalin file host dir ke working dir
COPY . .

#environment variables
ENV NODE_ENV=production \
    DB_HOST=item-db

#install dependencies dan build
RUN npm install --production --unsafe-perm && \
    npm run build

#port 8080 yang akan digunakan
EXPOSE 8080

#running aplikasi
CMD ["npm", "start"]