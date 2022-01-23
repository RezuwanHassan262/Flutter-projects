void main(){
  int s = 0;
  int i = 10;
  while(i<=60){
    if(i%2==0){
      s +=i;
    }
  i++;
  }
  print("Sum of even numbers in the range of 10-60 is = $s");
}