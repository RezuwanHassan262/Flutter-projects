greet(List<String> name, [String greeting = 'Good Morning'] ){
  int len = name.length;
  for(int i = 0;i<len;i++){
    print("${name[i]}, $greeting");
  }
}
void main(){
  List<String> name= ["Akkas", "Kuddus", "Rahim"];


 greet(name,"Good Night");
}
