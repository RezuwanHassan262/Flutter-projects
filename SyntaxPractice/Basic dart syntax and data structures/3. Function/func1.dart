import "dart:io";

double printavg(List<int> l){
  int x = l.length;
  num s = 0;
  for(int i = 0;i<x;i++){
    s += l[i];
  }
  double a =s/x;
  return a;
}

void main(){
  List<int> ll = [];
  while (true){
    var p = stdin.readLineSync()!;
    if (p != "done"){
      int y = int.parse(p);
      ll.add(y);
    }
    else{
      break;
    }
  }

  double r = printavg(ll);
  print(r);

}