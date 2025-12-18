FROM n8nio/n8n:latest

USER root

# 安装 sharp 所需依赖（含 HEIC 解码）
RUN apt-get update && apt-get install -y \
  libvips \
  libheif-dev \
  && rm -rf /var/lib/apt/lists/*

# 安装 sharp
RUN npm install sharp

USER node
