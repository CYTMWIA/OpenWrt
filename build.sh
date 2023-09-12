#! /bin/bash
set -e

cd openwrt

./scripts/feeds update -a
./scripts/feeds install -a

cp ../diffconfig .config
make defconfig

make download -j16
make -j $(($(nproc)+1)) || make -j1 V=s
