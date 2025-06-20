#!/bin/bash
touch gen_out_corect.txt
touch gen_out_main.txt
touch gen_input.txt
g++ main.cpp -o main.exe
g++ corect.cpp -o corect.exe
g++ gen.cpp -o gen.exe
for((i=1;i<=100;i++))do 
    echo $i
    ./gen.exe >gen_input.txt
    ./main.exe <gen_input.txt >gen_out_main.txt
    ./corect.exe <gen_input.txt >gen_out_corect.txt
    diff gen_out_main.txt gen_out_corect.txt || break
done
rm -f gen_out_corect.txt gen_out_main.txt gen_input.txt gen.exe main.exe corect.exe

