#!/bin/bash

source scripts/constants.sh
if [ $? -ne 0 ] ; then
    echo "Error: unable to source constants.sh, please execute from dotfiles repo..."
    exit 1
fi

cat themes/themeList.lst | while read lst
do

    fnt=`echo $lst | awk -F '|' '{print $1}'`
    tgt=`echo $lst | awk -F '|' '{print $2}'`
    tgt=`eval "echo $tgt"`

    if [ ! -d "${tgt}" ]
    then
        mkdir -p ${tgt} || echo "creating the directory as root instead..." && sudo mkdir -p ${tgt}
        echo "${tgt} directory created..."
    fi

    sudo tar -xzf ${CloneDir}/themes/${fnt}.tar.gz -C ${tgt}/
    echo "uncompressing ${fnt}.tar.gz --> ${tgt}..."

done

echo "rebuilding font cache..."
fc-cache -f
