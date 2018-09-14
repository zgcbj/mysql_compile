FROM centos:7.4.1708
RUN yum intall -y git
RUN git clone https://github.com/ysaicll/mysql-8.0.3-rc.git
