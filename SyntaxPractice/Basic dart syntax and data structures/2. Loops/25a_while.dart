import "dart:io";
void main(){
  int s = 0;
  int m = 0;
  int c  = 0;
  int i =0;
  while(i<7){
    print("Insert a number: ");
    int? x = int.parse(stdin.readLineSync()!);
    c += 1;
    s = s+x;
    if(c == 1){
      m = x;
    }
    if(x < m){
      m = x;
    }
    i++;
  }
  double avg = s/7;
  avg = avg.roundToDouble();
  print("Average: $avg");
  print("Minimum: $m");  
}