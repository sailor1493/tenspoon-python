#!/bin/bash

# Settings
REPO="https://raw.githubusercontent.com/sailor1493/tenspoon-python/master/"
GUIDE="files.txt"



echo "Hello Installer!"
if [[ $# -lt 1 ]]
then
  echo "설치 프로그램은 1개 이상의 변수를 받습니다."
  echo "관리자에게 문의하세요"
=======
repo="https://raw.githubusercontent.com/sailor1493/tenspoon-python/master/"
guide="files.txt"

# Main Routine
if [[ $# -lt 1 ]]
then
  echo "설치 프로그램은 1개 이상의 변수를 입력 받습니다."
  echo "개발 담당에게 문의하세요"
  exit 1
fi

# Set Path Variables
return_path=$PWD
download_path="./downloaded/${1}/testcase"