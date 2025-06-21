#!/bin/bash
MAIN_FILE=${1:-main.cpp}
CORRECT_FILE=${2:-corect.cpp}
GEN_FILE=${3:-gen.cpp}
nr_teste=${4:-6969}
touch gen_out_corect.txt
touch gen_out_main.txt
touch gen_input.txt
g++ $MAIN_FILE -o main.exe
g++ $CORRECT_FILE -o corect.exe
g++ $GEN_FILE -o gen.exe
#nr_teste=100
for((i=1;i<=nr_teste;i++))do 
    echo "Testul numarul: $i"
    ./gen.exe >gen_input.txt
    ./main.exe <gen_input.txt >gen_out_main.txt
    ./corect.exe <gen_input.txt >gen_out_corect.txt
    diff gen_out_main.txt gen_out_corect.txt || break
done
if [ "$i" -gt "$nr_teste" ];then
    echo "A trecut toate testele"
fi
rm -f gen_out_corect.txt gen_out_main.txt gen_input.txt gen.exe main.exe corect.exe

