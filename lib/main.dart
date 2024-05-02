import 'package:fastfood6/firstpage.dart';
import 'package:fastfood6/fuorthpage.dart';
import 'package:fastfood6/seconpage.dart';
import 'package:fastfood6/thirdpage.dart';
import 'package:flutter/material.dart';

List pages = [];

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainBody(),
    ),
  );
}

int now_s = 0;

class MainBody extends StatefulWidget {
  @override
  _MainBody createState() => _MainBody();
}

class _MainBody extends State<MainBody> {
  void changepage([int s = 0]) {
    now_s = s;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    pages = [
      Firstpage(),
      const Secondpage(),
      const Thirdpage(),
      Fourthpage(changepage)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(child: pages[now_s]),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 4,
                        color: Colors.grey.shade200)
                  ],
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        changepage(0);
                      },
                      icon: Image.asset("assets/images/home.png")),
                  IconButton(
                      onPressed: () {
                        changepage(1);
                      },
                      icon: Image.asset("assets/images/person.png")),
                  IconButton(
                      onPressed: () {
                        changepage(2);
                      },
                      icon: Image.asset("assets/images/card.png")),
                  IconButton(
                      onPressed: () {
                        changepage(3);
                      },
                      icon: Image.asset("assets/images/chat.png")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
