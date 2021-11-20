FROM centos:7
RUN yum update -y && yum install httpd -y && yum clean all

COPY appmedia.html /var/www/html/
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]