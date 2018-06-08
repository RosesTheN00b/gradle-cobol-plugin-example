
set -e
echo "start installing gnu cobol 3.0"

sudo apt-get install autoconf build-essential

curl -sLk https://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz 
tar xz  
cd db-4.8.30.NC/build_unix
../dist/configure --enable-cxx --prefix=/usr && make install && make clean 
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
