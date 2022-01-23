void main(){
  int s = 0;
  int i = 0;
  while(i<=300){
    if(i%7==0 && i%9==0){
      s += i;
    }
    i++;
  }
  print("Sum of all the multiples of 7 & 9 upto 300 is = $s");
}