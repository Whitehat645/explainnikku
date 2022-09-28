import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:explainnikku/classes/firstScreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> screens = ["firstScreen", "SecondScreen", "murneScreen"];
  List<Widget> pages = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
  ];
  List<IconData> iconslist = [Icons.dashboard, Icons.abc, Icons.ac_unit];

  ///to know the current screeen
  int currentScreen = 0;

  // -------------------------------------------------------
  Widget function1() {
    return Icon(iconslist[currentScreen]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            currentScreen = index;
          });
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // shrinkWrap: true,
        children: [
          function1(),
          pages[currentScreen],
        ],
      ),
    );
  }
}
