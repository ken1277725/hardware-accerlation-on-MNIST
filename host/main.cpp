

/**************************************************

file: demo_tx.c
purpose: simple demo that transmits characters to
the serial port and print them on the screen,
exit the program by pressing Ctrl-C

compile with the command: gcc demo_tx.c rs232.c -Wall -Wextra -o2 -o test_tx

**************************************************/

#include <iostream>
#include <fstream>
#include <cstdint>
using namespace std;

#ifdef _WIN32
#include <Windows.h>
#else
#include <unistd.h>
#endif

#include "rs232.h"

#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)  \
  (byte & 0x80 ? '1' : '0'), \
  (byte & 0x40 ? '1' : '0'), \
  (byte & 0x20 ? '1' : '0'), \
  (byte & 0x10 ? '1' : '0'), \
  (byte & 0x08 ? '1' : '0'), \
  (byte & 0x04 ? '1' : '0'), \
  (byte & 0x02 ? '1' : '0'), \
  (byte & 0x01 ? '1' : '0')

void waitms(clock_t ter){
    clock_t start = clock();
	while( (clock() - start) <= ter);
  	return;
}


int main(){
    int cport_nr=4,bdrate=9600;
    char mode[]="8N1";
    unsigned char buffer[1000];

    if(RS232_OpenComport(cport_nr, bdrate, mode)) {
        cout << "Can not open comport\n";
        return 0;
    }

    int GetSize;
    unsigned char Mode;
    int16_t FileIndex;
    while(1){

        GetSize = RS232_PollComport(cport_nr, &Mode, 1);
            
        if(Mode == 'R'){
            cout << "Curr Mode : Read \n";
            GetSize = RS232_PollComport(cport_nr, buffer , 2);
            FileIndex = *((int16_t *)(buffer));
            cout << "Read File : " << FileIndex << " \n";
            ifstream ifs;
            ifs.open("file/" + to_string(FileIndex),ifstream::in);
            char the;
            while(ifs >> the){
                RS232_SendByte(cport_nr, the);
                cout << the << ' ';
            }
            cout << "File Read End. \n\n";
        }else if(Mode == 'W'){
            cout << "Curr Mode : Write \n";
            GetSize = RS232_PollComport(cport_nr, buffer , 2);
            FileIndex = *((int16_t *)(buffer));
            cout << "Write File : " << FileIndex << " \n";
            ofstream ofs;
            ofs.open("file/" + to_string(FileIndex),ofstream::out|ofstream::trunc);
            sleep(1);
            GetSize = RS232_PollComport(cport_nr, buffer , 1000);
            waitms(100);

            cout << "Get : " << GetSize << " bytes";
            for (int i = 0; i < GetSize; i++) {
                ofs << buffer[i] << ' ';
            }
            cout << "File Write End. \n\n";
        }

    }

    return 0;
}

