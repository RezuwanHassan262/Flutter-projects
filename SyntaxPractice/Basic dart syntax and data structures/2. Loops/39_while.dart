import "dart:io";
void main(){
  int i = 1;
  while(i<=100){
    int c = 0;
    int j = 1;
    while(j<=i){
      if(i%j==0){
        c+=1;
      }
      j++;
    }
  if(c==2){
  stdout.write("$i ");
  } 
  i++;
  }
}