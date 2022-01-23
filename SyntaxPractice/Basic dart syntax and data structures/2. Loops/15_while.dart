import "dart:io";

void main(){
  print("Insert a number: ");
  int x = int.parse(stdin.readLineSync()!);
  int s = 0;
  int i = 1;
  while(i<=x){
    int k = i*i;
    i%2==0 ? s-=k : s+=k;
    i++;
  }
  print("Total: $s");
}