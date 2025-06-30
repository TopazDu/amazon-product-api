# 使用官方的 Node.js 镜像作为基础镜像
FROM node:16-slim

# 设置工作目录为 /app
WORKDIR /app

# 复制 package.json 和 package-lock.json（如果有的话）
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制当前目录所有文件到容器的工作目录中
COPY . .

# 暴露容器应用监听的端口，假设你需要3000端口
EXPOSE 3000

# 启动应用的命令
CMD ["npm", "start"]
