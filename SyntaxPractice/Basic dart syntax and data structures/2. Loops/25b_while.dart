import "dart:io";
void main(){
  int s = 0;
  int m = 0;
  int c  = 0;
  int i =0;
  while(i<7){
    print("Insert a number: ");
    int? x = int.parse(stdin.readLineSync()!);
    if(x%2!=0){
      c += 1;
      s = s+x;
      if(c == 1){
        m = x;
      }
      if(x > m){
        m = x;
      }
    }
    else{
    }
  i++;
  }
  double avg = s/c;
  avg = avg.roundToDouble();
  print("Average: $avg");
  print("Maximum: $m");  
}

