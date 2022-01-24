#!/usr/bin/env bash

# work pach
WORK_DIR=`dirname $0`
work_path=`dirname ${WORK_DIR}`
cd $work_path

# defination
RED="\033[0;32;31m"
GREEN="\033[0;32;32m"
YELLOW="\033[1;33m"
NONE="\033[m"


function print_msg() {
    msg=$1
    echo -e $GREEN****************************$NONE
    echo -e $GREEN $msg $NONE
    echo -e $GREEN****************************$NONE
}

for url in `cat urls.txt `
do
    print_msg "Downloading $url"
    wget $url
    print_msg "$url Finished!!!"
done
