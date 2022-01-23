void main(){
  int s = 1;
  int i = 3;
  while(i<=13){
    if(i%2!=0){
      s *=i;
    }
    i++;
  }
  print("Multiplication of all the od numbers in the range of 3-13 is = $s");
}