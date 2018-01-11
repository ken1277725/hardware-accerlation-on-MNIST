all:
	gcc -c rs232.c -o rs232.o
	g++ -O2 -c main.cpp -o main.o -std=c++11
	g++ rs232.o main.o -o host
