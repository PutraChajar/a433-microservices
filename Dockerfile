# docker mengunduh base image bernama node dari docker hub dengan tag 14
FROM node:14

# membuat directory app dan menjadikannya sebagai working directory
WORKDIR /app

# menyalin seluruh source code ke working directory
COPY . .

# menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# membuka port pada container agar dapat diakses pada host
EXPOSE 8080

# menjalankan perintah npm start pada saat container diluncurkan
sh -c "npm start"