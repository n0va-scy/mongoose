#!/bin/bash
cd examples/api_server
if [ ! -f "Makefile" ];then
	echo "no Makefile"
fi

temp=`sed -n '1p' Makefile`
echo $temp
if [ "$temp" != "CC = afl-gcc" ];then
	echo "run this"
	sed -i '1i\CC = afl-gcc' Makefile
fi
make