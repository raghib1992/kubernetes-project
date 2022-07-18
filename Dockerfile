FROM centos:latest
MAINTAINER raghib.npti@gmail.com
RUN yum install -y httpd \
  zip unzip
 ADD https://www.free-css.com/assets/files/free-css-template/download/pages258/loxury.zip /var/www/html
 WORKDIR /var/www/html
 RUN unzip loxury.zip
 RUN cp -rvf loxury/* .
 RUN -rf loxury loxury.zip
 CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80
