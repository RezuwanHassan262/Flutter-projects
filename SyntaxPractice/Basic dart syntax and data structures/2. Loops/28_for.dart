import "dart:io";

void main(){
  print("How many inputs will be there?");
  int k = int.parse(stdin.readLineSync()!);
  int m = 1;
  for(int i = 0;i<k;i++){
    print("Insert number");
    int n = int.parse(stdin.readLineSync()!);
    m *= n;
  }
  print("Multiplication result= $m");
}