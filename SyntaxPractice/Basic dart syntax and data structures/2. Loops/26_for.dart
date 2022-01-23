import "dart:io";

void main(){
  print("Insert a number");
  int y = int.parse(stdin.readLineSync()!);
  int s = 0;
  for(int x = 1;x<= y;x++){
    if(x%2!=0){
      s = s+x;
    }
  }
  print("$s");
}