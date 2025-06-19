g++ main.cpp -o main.exe
g++ corect.cpp -o corect.exe
g++ gen.cpp -o gen.exe
for((i=1;i<=100;i++))do 
    echo $i
    ./gen.exe >input
    ./main.exe <input.txt >out_main.txt
    ./corect.exe <input.txt >out_corect.txt
    diff out_main.txt out_corect.txt || break
done
