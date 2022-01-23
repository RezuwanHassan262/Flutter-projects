void main(){
  int s = 0;
  for(int i = 0;i<=300;i++){
    if(i%7==0 && i%9==0){
      s += i;
    }
  }
  print("Sum of all the multiples of 7 & 9 upto 300 is = $s");
}