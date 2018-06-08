set -e

wget -N -e robots=off -r -np -nH --cut-dirs =5  http://svn.code.sf.net/p/open-cobol/code/branches/gnucobol-2.x

tar xvf gnucobol-2.x.tar.gz
cd gnucobol-2.x
./configure
make
make check
sudo make install
sudo ldconfig
