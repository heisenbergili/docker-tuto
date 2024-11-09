# Import l'image
FROM nginx:alpine

# Destionation is where the image looks for web content to serve
COPY src/ /usr/share/nginx/html         




