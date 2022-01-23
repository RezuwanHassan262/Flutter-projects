import "dart:io";
import "dart:math";

void main(){
  print("Insert a number");
  int x = int.parse(stdin.readLineSync()!);
  int s = 0;
  for(int i = 1;i<=x;i++){
    int k = i*i*i;
    s +=k;
  }
  print("Output: $s");
}