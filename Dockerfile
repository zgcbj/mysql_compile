FROM centos:7.4.1708 as centos-patched
RUN yum update -y \
        && yum install -y git wget autoconf automake m4 libtool make cmake bison gcc ncurses-devel gcc-c++  openssl openssl-devel ncurses libai
RUN groupadd mysql && useradd -r -g mysql -s /bin/false mysql
RUN mkdir /soft && \
    wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-boost-8.0.11.tar.gz && \
    tar zxvf mysql-boost-8.0.11.tar.gz 
RUN cd mysql-8.0.11 && \
make && \
make install
