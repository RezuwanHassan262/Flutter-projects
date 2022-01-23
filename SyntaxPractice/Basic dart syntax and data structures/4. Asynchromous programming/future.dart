Future<void> main() async{
  print("boo");
  await Future.delayed(Duration(seconds: 2),() {
    print("goo");
  });
  print("foo");
}