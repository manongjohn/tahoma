#!/bin/bash
pushd thirdparty/tiff-4.0.3
CFLAGS="-fPIC" CXXFLAGS="-fPIC" ./configure --disable-jbig && make
popd

cd toonz

mkdir build
cd build

source /opt/qt59/bin/qt59-env.sh

cmake ../sources \
    -DWITH_SYSTEM_SUPERLU:BOOL=OFF

make -j7
