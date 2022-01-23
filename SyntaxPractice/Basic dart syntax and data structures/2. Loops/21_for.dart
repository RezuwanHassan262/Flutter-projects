import "dart:io";

void main(){
  print("Insert a number");
  int x = int.parse(stdin.readLineSync()!);
  int s = 0;
  for(int i = 0;i<=x;i++){
    i%7==0 && i%9==0? s+=i : " ";
  }
  print("$s");
}