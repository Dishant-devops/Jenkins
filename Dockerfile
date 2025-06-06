FROM centos:latest

RUN yum install -y httpd zip wget unzip

RUN wget -O /var/www/html/healet.zip https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip

WORKDIR /var/www/html

RUN unzip healet.zip

RUN cp -rf healet-html/* . && \
    rm -rf healet-html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
