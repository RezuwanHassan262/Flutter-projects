import "dart:io";

void main(){
  print("Insert start");
  int x = int.parse(stdin.readLineSync()!);
  print("Insert end");
  int y = int.parse(stdin.readLineSync()!);
  for(x;x<= y;x++){
    stdout.write("$x ");
  }
}