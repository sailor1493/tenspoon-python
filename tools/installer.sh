#!/bin/bash

# Settings
REPO="https://raw.githubusercontent.com/sailor1493/tenspoon-python/master"
TARBALL="tarball.tar"

# Command Check
if [[ $# -lt 1 ]]
then
  echo "설치 프로그램은 1개 이상의 변수를 받습니다."
  echo "관리자에게 문의하세요"
  exit 1
fi
command=$1
if [[ $command = "grader" ]]
then
  echo "채점 프로그램 설치 기능은 아직 구현되지 않았습니다."
  exit 1
fi
if [[ $command != "task" ]]
then
  echo "지원하지 않는 명령어입니다."
  echo "관리자에게 문의하세요."
  exit 1
fi

# Set Variables
task=$2
return_path=$PWD
download_path="./downloaded/$task/testcase"
task_repo="${REPO}/${task}"
tarball_repo="${task_repo}/testcase/${TARBALL}"
tarball_local="${download_path}/${TARBALL}"

# Download Testcases
rm -rf $download_path
mkdir -p $download_path
wget -nv -O $tarball_local $tarball_repo
tar xf $tarball_local -C $download_path
rm -f $tarball_local