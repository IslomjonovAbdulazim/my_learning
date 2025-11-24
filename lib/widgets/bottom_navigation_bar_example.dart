import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int activeIndex = 0;
  final widgets = [
    Text("Asosiy Oyna"),
    Text("Izlash"),
    Text("Sevimli"),
    Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: widgets[activeIndex],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          activeIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Uy"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Izlash"),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: "Sevimli",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
