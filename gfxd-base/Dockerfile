FROM centos:latest
MAINTAINER Biju Kunjummen <Biju.Kunjummen@gmail.com>
RUN yum install -y wget tar openssh
RUN wget --progress=dot:giga -O /tmp/jdk.rpm --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.rpm" 
RUN rpm -ivh /tmp/jdk.rpm && rm /tmp/jdk.rpm
RUN alternatives --install /usr/bin/java java /usr/java/default/bin/java 20000
COPY gfxd-1.0.rpm /tmp/
RUN yum -y install /tmp/gfxd-1.0.rpm