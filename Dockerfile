FROM centos:centos7
MAINTAINER "Subash P"

# Install the Yum repository for Nginx
RUN yum -y install epel-release

# Install the latest nginx version
RUN yum -y install nginx

EXPOSE 80 443

WORKDIR /vagrant
ADD nginx/nginx-app1.conf /etc/nginx/conf.d/

ADD app1 /usr/share/nginx/html

# Starting the Nginx engine
CMD /bin/systemctl start nginx