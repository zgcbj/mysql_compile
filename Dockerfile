FROM registry.cn-hangzhou.aliyuncs.com/mysql_compile/mysql8:mysql8_compile_step1

RUN cd mysql-8.0.11 && \
make && \
make install
