FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN rm index.html
COPY src/ /var/www/html
CMD /usr/sbin/apache2ctl -D FOREGROUND
EXPOSE 80