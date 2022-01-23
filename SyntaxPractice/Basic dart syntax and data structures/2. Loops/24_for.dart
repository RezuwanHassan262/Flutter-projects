import "dart:io";

void main(){
  int s = 0;
  int o = 0;
  int c = 0;
  for(int i =0;i<10;i++){
    print("Enter a number");
    int x = int.parse(stdin.readLineSync()!);
    s+=x;
    if(x%4==0){
      o+=x;  
      c+=1;
    } 
  }
  double avg= o/c;
  print("Average: $avg");
  print("Total: $o");
}