import "dart:io";

void main(){
  int s = 0;
  for(int i = 1;i<=20;i++){
    print("Insert a number: ");
    int? x = int.parse(stdin.readLineSync()!);
    s += x;
    if(i ==1){
      print("The sum of the first number is = $s");
    }
    else{
      print("The sum of the first  $i numbers is = $s");
    }
  }
}