double printAvg(List<int> l) {
  double a;
  int x = l.length;
  int s = 0;
  for(int i = 0;i<x;i++){
    s = s +l[i];
  }
  return a = s/x;
}

void main(){

  List<int> l = [1,2,3,4,5,6];
  double x = printAvg(l);
  print(x);

}