FROM ubuntu
Maintainer Christophe MATTEI
Run apt-get update
Run apt-get install -y nginx
Run apt-get install -y git
RUN rm -rf /var/www/html
Run git clone -b dev https://github.com/diranetafen/static-website-example.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80

