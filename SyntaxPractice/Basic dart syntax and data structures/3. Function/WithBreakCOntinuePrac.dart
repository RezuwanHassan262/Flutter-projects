import "dart:io";
List returnAvg(List<num> l){
  int len = l.length;
  num s = 0;
  for(int i = 0;i<len;i++){
    s += l[i];
  }
  double avg = s/len;
  return([avg,len,s]);
}
void main(){
  List<int> l= [];
  while (true){
    print('''Insert a number and when done, type "Done" ''');
    var x = stdin.readLineSync()!;
    if(x == 'Done'){
      break;
    }
    else{
      try {
        int y = int.parse(x);
        l.add(y);
      } 
      catch (e) {
        print("Please insert a numerical integar number!");
        continue;
      }
    }
  }
 List z = returnAvg(l);
 double avg = z[0];
 int e = z[1];
 int sum = z[2];
 print('''Complete list: ${l} \nTotal elements: $e \nSum of elements: $sum \nAverage: $avg''');
}
