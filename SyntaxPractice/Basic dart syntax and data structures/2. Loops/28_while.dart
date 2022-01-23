import "dart:io";

void main(){
  print("How many inputs will be there?");
  int k = int.parse(stdin.readLineSync()!);
  int m = 1;
  int i = 0;
  while(i<k){
    print("Insert number");
    int n = int.parse(stdin.readLineSync()!);
    m *= n;
    i++;
  }
  print("Multiplication result = $m");
}