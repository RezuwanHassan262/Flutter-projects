import "dart:io";
void main(){
  int s  = 0;
  int i = 0;
  while(i<=600){
    i%7==0 && i%9==0? s+=i : " "; 
    i++;
  }
  stdout.write("$s ");
}