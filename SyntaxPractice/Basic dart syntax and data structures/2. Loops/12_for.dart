import "dart:io";
void main(){
  int s = 0;
  int m = 0;
  for (int i =0;i<7;i++){
    print("Insert a number: ");
    int? x = int.parse(stdin.readLineSync()!);
    s = s+x;
    if(x > m){
      m = x;
    }
  }
  double avg = s/7;
  avg = avg.roundToDouble();
  print("Average: $avg");
  print("Maximum: $m");  
}

