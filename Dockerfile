FROM bjzgc/mysql_compile:mysql8_compile_step1

RUN cd mysql-8.0.11 && \
make -j32&& \
make install
