void main(){
  int s = 1;
  for(int i = 3;i<=13;i++){
    if(i%2!=0){
      s *=i;
    }
  }
  print("Multiplication of all the od numbers in the range of 3-13 is = $s");
}