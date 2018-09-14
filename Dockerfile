FROM bjzgc/mysql_compile:mysql8_code
RUN yum install -y autoconf automake m4 libtool make cmake bison gcc ncurses-devel gcc-c++  openssl openssl-devel ncurses libai
