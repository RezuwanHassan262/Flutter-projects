import "dart:io";

void main(){
  int mx = 0;
  int mn = 0;
  int s = 0;
  int i=0;
  while(i<10){
    print("Insert a number");
    int? x = int.parse(stdin.readLineSync()!);
    if(i==0){
      mx = x;
      mn = x;
      s +=x;
    }
    else{
      if(mx < x){
        mx = x;
      }
      else if(x < mn){
        mn =x;
      }
      s +=x;
    }
  i++;
  }
  double avg = s/10;
  print("Maximum = $mx");
  print("Minimum = $mn");
  print("Average = $avg");
}