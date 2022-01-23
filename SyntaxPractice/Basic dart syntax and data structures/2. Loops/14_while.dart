import "dart:io";
import "dart:math";

void main(){
  print("Insert a number");
  int x = int.parse(stdin.readLineSync()!);
  int s = 0;
  int i = 1;
  while(i<=x){
    int k = i*i*i;
    s +=k;
    i++;
  }
  print("Output: $s");
}