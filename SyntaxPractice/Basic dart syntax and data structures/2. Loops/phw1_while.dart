import "dart:io";

void main(){
  int i = 0;
  while(i<=100){
    if(i%2==0){
      stdout.write("$i ");
    }
    i++;
  }
}
