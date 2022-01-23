import "dart:io";

void main(){
  print("Insert a number");
  int y = int.parse(stdin.readLineSync()!);
  int s = 0;
  int x = 1;
  while(x<= y){
    if(x%2!=0){
      s = s+x;
    }
  x++;
  }
  print("$s");
}