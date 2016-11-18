FROM daocloud.io/library/ubuntu:16.04
MAINTAINER nenew
RUN cp /etc/apt/sources.list /etc/apt/sources.list.backup
RUN sed 's/archive.ubuntu/mirrors.163/g' /etc/apt/sources.list.backup > /etc/apt/sources.list
RUN apt-get update
CMD /bin/bash
