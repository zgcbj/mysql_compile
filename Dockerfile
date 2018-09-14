FROM centos:7.4.1708 as centos-patched

RUN yum update -y \
	&& yum install -y git  wget
RUN git clone https://github.com/mysql/mysql-server.git


