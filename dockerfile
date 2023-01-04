FROM centos:latest
RUN  sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN  sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install httpd zip unzip -y
RUN gitclone https://github.com/aadigiit6304/final.git /var/www/html
#WORKDIR /var/www/html
#RUN unzip bonativo.zip
#RUN rm -rf bonativo.zip &&\
    cp -rf bonativo/* . &&\
    rm -rf bonativo &&\
    touch hiiii
#EXPOSE 80
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
