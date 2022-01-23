void main(){
  int s = 0;
  for(int i = 10;i<=60;i++){
    if(i%2==0){
      s +=i;
    }
  }
  print("Sum of even numbers in the range of 10-60 is = $s");
}