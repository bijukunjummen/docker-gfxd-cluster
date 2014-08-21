FROM bijukunjummen/gfxd-base:latest
MAINTAINER Biju Kunjummen <Biju.Kunjummen@gmail.com>
RUN mkdir -p /opt/gfxd/locator
ADD startlocator.sh /opt/gfxd/locator/
RUN chmod a+x /opt/gfxd/locator/startlocator.sh
EXPOSE 1527 7075 10334
ENTRYPOINT /opt/gfxd/locator/startlocator.sh  && tail -f /opt/gfxd/locator/gfxdlocator.log
