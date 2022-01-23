import "dart:io";
void main(){
  int s  = 0;
  int i = 0;
  while(i<=600){
    if(i%7==0){
      if(i%9==0){
      }
    else{
      s+=i;
    }
    }
    else if(i%9==0){
      if(i%7==0){
      }
    else{
      s+=i;
      }
    }
    i++;
}
print("$s");
}