FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache \
  vips \
  libheif \
  build-base \
  python3

RUN npm install sharp

USER node

