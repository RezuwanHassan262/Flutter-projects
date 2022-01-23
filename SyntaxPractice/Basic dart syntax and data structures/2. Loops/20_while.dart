import "dart:io";

void main(){
  print("Insert a number");
  int x = int.parse(stdin.readLineSync()!);
  int s = 0;
  int i = 0;
  while(i<=x){
    i%7==0? s+=i : " ";
    i++;
  }
  print("$s");
}