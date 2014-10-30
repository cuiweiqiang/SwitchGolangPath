#!/bin/sh
#!filename exec.sh

function setGopath() {
    export GOPATH=$1
}

if test -d $1
then
    if [[ ! -n $1 ]]; then
        echo "未输入路径，将当前路径\n$(pwd)\n设置为 \$GOPATH"
        setGopath $(pwd)
    else
        echo "输入路径为：\n$1\n将其设置为 \$GOPATH"
        setGopath $1
    fi
elif test -f $1
then
echo "路径输入不正确"
    exit 1
else
    echo "输入的文件夹未创建"
    exit 1
fi