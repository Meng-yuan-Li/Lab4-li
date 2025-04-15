# 使用 Python 官方镜像
FROM python:3.10

# 设置工作目录
WORKDIR /app

# 复制并安装依赖
COPY requirements.txt .
RUN pip install -r requirements.txt

# 复制整个项目代码
COPY . .

# 运行应用
CMD ["python", "main.py"]
