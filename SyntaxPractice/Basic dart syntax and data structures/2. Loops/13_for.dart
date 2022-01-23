import "dart:io";

void main(){
  int s = 0;
  int c = 0;
  int m = 0;
  for(int i =0;i<7;i++){
    print("Insert a number");
    int x = int.parse(stdin.readLineSync()!);
    if(x%2==0){
      s+= x; 
      c+=1;
    }
    if(x<m){
      m = x;
    }
}
  double avg = s/c;
  avg = avg.roundToDouble();
  print("Average: $avg");
  print("Minimum $m");
}