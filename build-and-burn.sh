#!/bin/bash

cd "$(dirname "$0")"

make -C libopencm3 clean
make -C libopencm3 TARGETS=stm32/f0

make -C src clean
make -C src V=1 bin
dfu-util -D src/cdcacm.bin -a 0 --dfuse-address 0x08000000

# system_profiler SPUSBDataType
