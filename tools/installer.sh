#!/bin/bash

# Settings
REPO="https://raw.githubusercontent.com/sailor1493/tenspoon-python/master"
TARBALL="tarball.tar"


if [[ $# -lt 1 ]]
then
  echo "설치 프로그램은 1개 이상의 변수를 받습니다."
  echo "관리자에게 문의하세요"
  exit 1
fi

if [[ $1 = "grader" ]]
then
  echo "채점 스크립트를 다운로드합니다."
  echo "아직 구현하지 않은 기능입니다."
  exit 0
fi

if [[ $1 = "task" ]]
then
  echo "${2} 과제를 다운로드합니다."
else
  echo "정의되지 않은 명령어입니다."
  echo "관리자에게 문의하세요"
  exit 2
fi

# Set Variables
task=$2
return_path=$PWD
download_path="./downloaded/${task}/testcase"
tb_local="${download_path}/${TARBALL}"

# Download Tarball
echo "테스트케이스를 다운로드합니다."
rm -rf $download_path
mkdir -p $download_path
wget -nv -O $tb_local "${REPO}/${task}/testcase/${TARBALL}"
tar xf $tb_local -C "${download_path}/"
rm -f $tb_local