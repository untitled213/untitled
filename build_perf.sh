gcc perf_main.c -o perf_main -lpthread -lrt -lm
sleep 1

ROOT=$PWD

cd $ROOT/perf_lib/
make && sudo make install

cd $ROOT/perf_src/SOURCES/libibverbs-41mlnx1
./autogen.sh
CFLAGS=-Wno-error ./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make clean
make && sudo make install
cd $ROOT
sleep 1

cd $ROOT/perf_src/SOURCES/libmlx5-41mlnx1
./autogen.sh
CFLAGS=-Wno-error ./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make clean
make && sudo make install
cd $ROOT
sleep 1

cd $ROOT/perf_src/SOURCES/perftest-4.5.0.mlnxlibs
./autogen.sh
CFLAGS=-Wno-error ./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make clean
make && sudo make install
cd $ROOT
