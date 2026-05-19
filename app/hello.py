version: "3.8"
services:
  hello:
    image: python:3.9-slim
    working_dir: /app
    volumes:
      - ./app:/app
    command: python hello.py
print("Hello World from Docker Compose on EC2!")
