import "dart:io";

void main(){
  int s = 0;
  int i = 1;
  while(i<=20){
    print("Insert a number: ");
    int? x = int.parse(stdin.readLineSync()!);
    s += x;
    if(i ==1){
      print("The sum of the first number is = $s");
    }
    else{
      print("The sum of the first  $i numbers is = $s");
    }
  i++;
  }
}