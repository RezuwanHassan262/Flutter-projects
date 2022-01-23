import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.arrow_left,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.more_horiz,
                              size: 36.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      
                      Image.asset(
                        "assets/images/image 1.png",
                        width: double.infinity,
                        height: 284.5,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 284.5 - 40.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0xffffffff),
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.only(top: 76.0, bottom: 8.0),
                                child: Text(
                                  "FeelsDesign",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "UI Designer",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                    color: Color(0xffaaaaaa),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Mumbai, India",
                                  style: TextStyle(
                                    color: Color(0xffbbbbbb),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: const [
                                        Text(
                                          "7",
                                          style: TextStyle(
                                            color: Color(0xffbbbbbb),
                                          ),
                                        ),
                                        Text(
                                          "Photos",
                                          style: TextStyle(
                                            color: Color(0xffbbbbbb),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          "337",
                                          style: TextStyle(
                                            color: Color(0xffbbbbbb),
                                          ),
                                        ),
                                        Text(
                                          "Followers",
                                          style: TextStyle(
                                            color: Color(0xffbbbbbb),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          "3",
                                          style: TextStyle(
                                            color: Color(0xffbbbbbb),
                                          ),
                                        ),
                                        Text(
                                          "Following",
                                          style: TextStyle(
                                            color: Color(0xffbbbbbb),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset(
                                        "assets/images/image 2.png"),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset(
                                        "assets/images/image 4.png"),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset(
                                        "assets/images/image 5.png"),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset(
                                        "assets/images/image 6.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 284.5 - 110.0),
                        child: Image.asset(
                          "assets/images/Frame 3.png",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: const Color(0xffeeeeee),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.home),
                          Icon(Icons.search),
                          Icon(Icons.add),
                          Icon(Icons.save),
                          Icon(Icons.people),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
