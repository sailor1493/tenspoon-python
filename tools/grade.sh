#!/bin/bash

output_directory="my_output"
timeout=1

if [[ $# -ne 1 ]]
then
    echo "채점 프로그램은 1개의 변수를 받습니다."
    echo "관리자에게 문의하세요."
    exit 1
fi

# Set variables
task=$1
directory="./downloaded/${task}/testcase"
count=`ls ${directory}/*.in | wc -l`
i=0

# Reset Grading Directory
rm -rf $output_directory
mkdir $output_directory


echo "${count}개 테스트 케이스를 이용한 채점을 시작합니다"
echo "채점 기능은 아직 구현되지 않았습니다."

for input in `ls ${directory}/*.in`
do
    i=$(($i + 1))
    output=`echo $input | cut -d "." -f2 | cut -d "/" -f5`
    output="${output}.out"
    echo "${count}개 중 ${i}번째 케이스 채점 중..."
    timeout ${timeout} python3 ${task}.py < ${input} > "./${output_directory}/${output}"
    diff -Z "${directory}/${output}" "./${output_directory}/${output}"
done
exit 0
