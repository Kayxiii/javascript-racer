# Name: Tan Jia Xuan
# Matric No.: U2102793/1
# Orignal Repository: https://github.com/jakesgordon/javascript-racer
# Cloned Repository:https://github.com/Kayxiii/javascript-racer

# Base image
FROM node:18-slim

# Set maintainer information
LABEL maintainer="Tan Jia Xuan jiaxuann1101@gmail.com"

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy project files
COPY . .

# Install HTTP server
RUN npm install -g http-server

# Expose port 5000
EXPOSE 5000

# Start http-server
CMD ["http-server", ".", "-p", "5000"]
