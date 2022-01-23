import "dart:io";
void main(){
  int s  = 0;
  for(int i = 0;i<=600;i++){
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
}
print("$s");
}