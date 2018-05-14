set -e
apt-get update && \
    apt-get -y install autoconf build-essential && \
    curl -sLk https://sourceforge.net/projects/open-cobol/files/gnu-cobol/3.0/gnucobol-3.0-rc1.tar.gz | tar xz && \
    cd gnucobol-3.0-rc1 && ./configure && make && make install && ldconfig && cd /tmp/ && rm -rf * && \
    apt-get -y --purge autoremove autoconf build-essential && \
    apt-get -y clean && \
rm -rf /var/lib/apt/lists/*
