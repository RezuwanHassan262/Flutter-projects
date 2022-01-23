import "dart:io";
void main(){
  int s  = 0;
  for(int i = 0;i<=600;i++){
    i%7==0 && i%9==0? s+=i : " "; 
  }
  stdout.write("$s ");
}