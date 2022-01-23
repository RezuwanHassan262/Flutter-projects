import "dart:io";

void main(){
  print("Insert a number");
  int n = int.parse(stdin.readLineSync()!);
  double s = 0;
  for(int i =1;i<=n;i++){
    double x = n/((2*n)-1);
    s += x;
    }
  print("$s");
}