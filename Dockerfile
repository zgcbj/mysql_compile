FROM bjzgc/mysql_compile:mysql8_compile_env
RUN mkdir /soft && \
    wget https://cdn.mysql.com//Downloads/MySQL-5.7/mysql-5.7.25.tar.gz && \
    tar zxvf mysql-5.7.25.tar.gz 

