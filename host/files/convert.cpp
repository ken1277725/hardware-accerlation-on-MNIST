#include <bits/stdc++.h>
using namespace std;

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(0);
    ifstream ifs;
    ifs.open("W2.txt",ifstream::in);
    string s;
    int cnt = 161;
    while(getline(ifs,s)){
        if(s.size()!=0){
            ofstream ofs;
            ofs.open(to_string(cnt),ofstream::out|ofstream::trunc);
            do{
                if(s.size() == 0)break;
                ofs << s;
            }while(getline(ifs,s));
            ofs.close();
            cnt++;
        }   
    }



}
