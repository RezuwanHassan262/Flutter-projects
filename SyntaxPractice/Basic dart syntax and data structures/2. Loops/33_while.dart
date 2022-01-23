import "dart:io";
void main(){
  int x = 0;
  int y = 1;
  int s = 0;
  while(s<1600){
    x = y;
    y = s;
    stdout.write("$y ");
    s =(x+y);
  }
}