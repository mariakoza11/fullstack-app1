#!/bin/bash

echo "Mulai deploy backend dan frontend..."

# Pindah ke folder backend dan jalankan
cd /home/ubuntu/fullstack-app1/backend
pm2 stop all
pm2 start server.js --name backend

# Pindah ke folder frontend dan jalankan
cd /home/ubuntu/fullstack-app1/frontend
pm2 stop frontend
pm2 serve dist --spa --port 4200 --name frontend

echo "Deploy selesai!"
