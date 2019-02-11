set -e

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~ Installing GNU COBOL ~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get update
sudo apt-get -y install autoconf build-essential

curl -sLk https://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz | tar xz
cd db-4.8.30.NC/build_unix
../dist/configure --enable-cxx --prefix=/usr 
sudo make install
cd ..

curl -sLk https://sourceforge.net/projects/open-cobol/files/gnu-cobol/3.0/gnucobol-3.0-rc1.tar.gz | tar xz
cd gnucobol-3.0-rc1 
./configure 
make
sudo make install 
sudo ldconfig
cd ..
