FROM bijukunjummen/gfxd-base:latest
MAINTAINER Biju Kunjummen <Biju.Kunjummen@gmail.com>
RUN mkdir -p /opt/gfxd/server1
ADD startserver.sh /opt/gfxd/server1/
RUN chmod a+x /opt/gfxd/server1/startserver.sh
ENTRYPOINT /opt/gfxd/server1/startserver.sh  && tail -f /opt/gfxd/server1/gfxdserver.log
