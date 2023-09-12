#! /bin/bash
set -e

cd openwrt

./scripts/diffconfig.sh > ../diffconfig
