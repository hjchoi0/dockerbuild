FROM ubuntu:18.04
MAINTAINER choihj
LABEL purpose="Hand-on Lab"
RUN apt-get update -y
RUN apt install apache2 -y
ADD test.html /var/www/html
workDIR /var/www/html
RUN ["/bin/bash", "-c", "echo 2nd homepage >> test2.html"]
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]
