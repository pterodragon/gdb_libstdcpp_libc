export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/debug
g++ -g3 -ggdb -Og main.cpp -o main
gdb -x cmd.gdb main
