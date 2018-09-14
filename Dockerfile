FROM centos:7.4.1708 as centos-patched

RUN yum update -y \
	&& yum install -y git 
RUN git clone https://github.com/ysaicll/mysql-8.0.3-rc.git
