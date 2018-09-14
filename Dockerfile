FROM centos:7.4.1708 as centos-patched

RUN yum update -y \
	&& yum install -y git  wget
RUN git clone https://github.com/ysaicll/mysql-8.0.3-rc.git
RUN yum install -y autoconf automake m4 libtool make cmake bison gcc libncurses5-dev
RUN groupadd mysql && useradd -r -g mysql -s /bin/false mysql
RUN mkdir /soft && \
    wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-boost-8.0.11.tar.gz && \
    tar zxvf mysql-boost-8.0.11.tar.gz && \
    cd mysql-8.0.11 && \
    cmake . -DCMAKE_INSTALL_PREFIX=/soft/mysql \
    -DMYSQL_DATADIR=/soft/mysql/data \
-DSYSCONFDIR=/etc \
-DWITH_MYISAM_STORAGE_ENGINE=1 \
-DWITH_INNOBASE_STORAGE_ENGINE=1 \
-DWITH_ARCHIVE_STORAGE_ENGINE=1 \
-DENABLED_LOCAL_INFILE=1 \
-DENABLE_DOWNLOADS=1  \
-DDEFAULT_CHARSET=utf8mb4 \
-DWITH_DEBUG=0 \
-DMYSQL_MAINTAINER_MODE=0 \
-DWITH_BOOST=./boost && \
-DWITH_DEBUG=1 && \
make && \
make install
