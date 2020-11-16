FROM registry.access.redhat.com/ubi8/ubi
USER root

RUN dnf install -y https://downloads.hpe.com/pub/softlib2/software1/pubsw-linux/p1857046646/v183344/ssacli-4.21-7.0.x86_64.rpm

ENTRYPOINT /usr/sbin/ssacli
