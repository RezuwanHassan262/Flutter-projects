import "dart:io";
void main(){
  List<String> avatars = ["Sozeto","Yengchan", "Kuruk","Kyoshi", "Roku","Aang","Korra","Ganji"];
  List<int> ages = [70,50,28,220,70,110,50,60];
  List<String> Elements = ["Fire","Air","Water", "Earth"];
  int x = 0;
  for(int i =0;i<avatars.length;i++){
    if(x>=Elements.length){
      x = 0;

    }
    print("${avatars[i]} ${ages[i]} ${Elements[x]}");
    x++;
    }
} 
