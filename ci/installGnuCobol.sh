
set -e
echo "start installing gnu cobol 3.0"

sudo apt-get install autoconf build-essential

curl -sLk https://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz >> download_berkley.log
tar xz  >> unpack_berkey.log
cd db-4.8.30.NC/build_unix
../dist/configure --enable-cxx --prefix=/usr >> install_berkley.log  && make install >> make_install_berkley.log  && make clean >> make_clean_berkley.log 
cd ..
cd ..
cd ..
ls -l

curl -sLk https://sourceforge.net/projects/open-cobol/files/gnu-cobol/3.0/gnucobol-3.0-rc1.tar.gz | tar xz && 
cd gnucobol-3.0-rc1 
./configure 
make 
make install 
ldconfig 
cd ..
