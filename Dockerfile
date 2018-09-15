FROM bjzgc/mysql_compile:mysql8_compile_env
RUN mkdir /soft && \
    wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-boost-8.0.11.tar.gz && \
    tar zxvf mysql-boost-8.0.11.tar.gz 

