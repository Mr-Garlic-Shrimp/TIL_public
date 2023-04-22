FROM centos:7

RUN yum -y install epel-release && \
    yum -y install wget && \
    yum -y groupinstall "Development Tools"

WORKDIR /tmp
RUN wget https://github.com/sysstat/sysstat/archive/refs/tags/v10.1.5.tar.gz && \
    tar xzf v10.1.5.tar.gz && \
    cd sysstat-10.1.5 && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf sysstat-10.1.5 v10.1.5.tar.gz && \
    yum -y groupremove "Development Tools" && \
    yum -y remove wget && \
    yum clean all

WORKDIR /root

