cd libibverbs-41mlnx1/
#./autogen.sh && ./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make && sudo make install
cd ..

cd libmlx4-41mlnx1
#./autogen.sh && ./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make && sudo make install
cd ..

cd perftest-4.5.0.mlnxlibs
#./autogen.sh && ./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make && sudo make install
cd ..
