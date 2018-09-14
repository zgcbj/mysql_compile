FROM centos:7.4.1708 as centos-patched

RUN yum update -y \
	&& yum install -y git  wget
RUN git clone https://github.com/ysaicll/mysql-8.0.3-rc.git
RUN yum install -y autoconf automake m4 libtool make cmake bison gcc 
RUN wget https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.gz
RUN tar -xzvf boost_1_66_0.tar.gz -C  /usr/local/
RUN groupadd mysql && useradd -r -g mysql -s /bin/false mysql
RUN cd mysql-8.0.3-rc/ && mkdir build && cd build && \
    cmake ../mysql-8.0.3-rc -DWITH_DEBUG=1 \
-DCMAKE_INSTALL_PREFIX=/usr/local/mysql \
-DMYSQL_DATADIR=/usr/local/mysql/data \
-DWITH_BOOST=/usr/local/boost \
-DSYSCONFDIR=/etc \
-DEFAULT_CHARSET=utf8mb4 \
-DDEFAULT_COLLATION=utf8mb4_general_ci \
-DENABLED_LOCAL_INFILE=1 \
-DEXTRA_CHARSETS=all \
-DWITH_DEBUG=1 && make && make install
