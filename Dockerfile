# Name: Tan Jia Xuan
# Matric No.: U2102793/1
# Orignal Repository: https://github.com/jakesgordon/javascript-racer
# Cloned Repository:https://github.com/Kayxiii/javascript-racer

FROM nginx:latest

# Set maintainer information
LABEL maintainer="Tan Jia Xuan jiaxuann1101@gmail.com"

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy project files to Nginx's default HTML directory
COPY . /usr/share/nginx/html/

# Expose port 5000
EXPOSE 5000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]