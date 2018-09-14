FROM centos:7.4.1708 as centos-patched

RUN yum update -y \
	&& yum install -y git  wget
RUN wget https://codeload.github.com/mysql/mysql-server/zip/8.0

