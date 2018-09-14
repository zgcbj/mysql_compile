FROM centos:7.4.1708 as centos-patched

RUN yum update -y \
	&& yum install -y git  wget
RUN git clone https://github.com/ysaicll/mysql-8.0.3-rc.git
RUN yum install -y autoconf automake m4 libtool make cmake bison gcc 
RUN wget https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.gz
RUN tar -xzvf boost_1_66_0.tar.gz -C  /usr/local/


