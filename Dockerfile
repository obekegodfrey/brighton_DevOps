FROM Centos:latest
MAINTAINER obekegodfrey2@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip brighton.zip
RUN cp -rvf brighton/*
RUN rm -rf brighton brighton.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80