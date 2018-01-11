#include <bits/stdc++.h>
using namespace std;

int b[3136][10];

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(0);
    ifstream ifs;
    ifs.open("W3.txt",ifstream::in);
    string s = "";
    int cnt = 2406;

    stringstream ss;
    int row = 0 , col = 0;
    while(getline(ifs,s)){
        cout << "lins" << s << '\n'; 
        ss.str(s); 
        for(col =0;col<10;col++){
            int the;
            ss >> the;
            cout << the << ' ';
            b[row][col] = the;
        }
        cout << '\n';
        row ++ ;
        s.clear();
        ss.clear();
    }
    
    ofstream ofs;
    ofs.open(to_string(cnt),ofstream::out|ofstream::trunc);
    for(col=0;col<10;col++){
        for(row=0;row<3136;row++){
            ofs << b[row][col] << ' ';
            if((row+1)%784 == 0){
                ofs.close();
                cnt++;
                ofs.open(to_string(cnt),ofstream::out|ofstream::trunc);
            }
        }
    }
    ofs.close();
}
