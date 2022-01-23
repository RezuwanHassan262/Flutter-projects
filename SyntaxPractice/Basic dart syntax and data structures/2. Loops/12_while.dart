import "dart:io";
void main(){
  int s = 0;
  int m = 0;
  int i = 0;
  while (i<7){
    print("Insert a number: ");
    int? x = int.parse(stdin.readLineSync()!);
    s = s+x;
    if(x > m){
      m = x;
    }
    i++;
  }
  double avg = s/7;
  avg = avg.roundToDouble();
  print("Average: $avg");
  print("Maximum: $m");  
}

