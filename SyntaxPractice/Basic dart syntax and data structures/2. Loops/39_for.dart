import "dart:io";
void main(){
  for(int i = 1;i<=100;i++){
  int c = 0;
    for(int j = 1;j<=i;j++){
      if(i%j==0){
        c+=1;
      }
    }
  if(c==2){
  stdout.write("$i ");
  } 
  }
}