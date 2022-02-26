#!/bin/bash

repo="https://raw.githubusercontent.com/sailor1493/tenspoon-python/master/"
guide="files.txt"

# Main Routine
if [[ $# -lt 1 ]]
then
  echo "설치 프로그램은 1개 이상의 변수를 입력 받습니다."
  echo "개발 담당에게 문의하세요"
  exit 1
else
  echo "Hello Installer ${1}"
fi

# move
echo $PWD
return_dir=$PWD
target_dir="./downloaded/${1}/testcase"

# Setup for download: change working directory and download a guide
rm -rf $target_dir
mkdir -p $target_dir
cd $target_dir
wget -O $guide "${repo}${1}/testcase/${guide}"

# Iteratively download files directed by guide file
cd $return_dir
echo $PWD
