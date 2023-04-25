# 使用官方Node.js镜像作为基础镜像
FROM node:alpine

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json/yarn.lock 文件到工作目录
COPY package.json yarn.lock next.config.js ./

# 复制应用程序源代码到工作目录
COPY .next node_modules ./

# 暴露端口，确保与 next.config.js 或 .env 文件中的端口匹配
EXPOSE 4000

# 运行应用程序
CMD ["npm", "start"]