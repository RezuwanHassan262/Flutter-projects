greet(List<String> name, {int roll=10, int Num=200}){
  int len = name.length;
  for(int i = 0;i<len;i++){
    print("${name[i]} $roll $Num");
  }
}
void main(){

  List<String> name= ["Akkas", "Kuddus", "Rahim"];
  greet(name, roll:20, Num:400);

}
