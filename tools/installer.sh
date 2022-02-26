#!/bin/bash

# Settings
REPO="https://raw.githubusercontent.com/sailor1493/tenspoon-python/master/"
GUIDE="files.txt"



echo "Hello Installer!"
if [[ $# -lt 1 ]]
then
  echo "설치 프로그램은 1개 이상의 변수를 받습니다."
  echo "관리자에게 문의하세요"
else
  echo "Hello Installer ${1}"
fi

# Set Path Variables
return_path=$PWD
download_path="./downloaded/${1}/testcase"

# Download Guide File
echo "설치 정보 파일을 다운로드합니다"
rm -rf $download_path
mkdir -p $download_path
cd $download_path
wget -nv -O $GUIDE "${REPO}${1}/testcase/${GUIDE}"