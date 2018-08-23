FROM centos:7 
EXPOSE 80
EXPOSE 8080 
RUN yum -y install httpd
RUN echo "Hello new world" > /var/www/html/index.html
#COPY server.js .
#CMD node server.js

ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
