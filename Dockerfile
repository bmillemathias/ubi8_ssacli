FROM registry.access.redhat.com/ubi8/ubi

LABEL maintainer="Baptiste Mille-Mathias <baptiste.millemathias@gmail.com>"
LABEL ssacli_version="4.21-7.0"

USER root

RUN dnf install -y https://downloads.hpe.com/pub/softlib2/software1/pubsw-linux/p1857046646/v183344/ssacli-4.21-7.0.x86_64.rpm \
    && dnf clean all

ENTRYPOINT /usr/sbin/ssacli
