# For the purpose of this lab, we will take the official nginx Dockerfile
# https://github.com/dockerfile/nginx

FROM ubuntu
# all images must have a FROM
# usually from a minimal Linux distribution like debian or (even better) alpine
# if you truly want to start with an empty container, use FROM scratch


# Commands used to Install Nginx
RUN apt-get update && apt-get install -y nginx

# Define mountable directories
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Expose ports.
EXPOSE 80
EXPOSE 443
# expose these ports on the docker virtual network
# you still need to use -p or -P to open/forward these ports on host

# Define default command.
CMD ["nginx"]
# required: run this command when container is launched
# only one CMD allowed, so if there are multiple, last one wins
