FROM amazonlinux
RUN yum install httpd -y
RUN yum install vim -y
RUN mkdir /data
COPY . /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
