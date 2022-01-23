import "dart:io";
void main(){
  int x = 0;
  int y = 1;
  for(int s = 0;s<1600;s =(x+y)){
    x = y;
    y = s;
    stdout.write("$y ");
  }
}