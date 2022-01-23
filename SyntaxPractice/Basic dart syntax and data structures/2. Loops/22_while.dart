import "dart:io";

void main(){
  int s = 0;
  int o = 0;
  int c = 0;
  int i =0;
  while(i<10){
    print("Enter a number");
    int x = int.parse(stdin.readLineSync()!);
    s+=x;
    if(x%2!=0){
      o+=x;  
      c+=1;
    }
    i++;
  }
  double avg= o/c;
  print("Average: $avg");
  print("Total: $o");
}