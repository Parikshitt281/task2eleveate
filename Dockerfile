FROM amazonlinux
RUN yum update -y && yum install httpd -y 
RUN echo "task-2 for elevate" > /var/www/html/index.html
EXPOSE 80 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

