import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Bu Misol"),
          actions: [
            CupertinoButton(
              onPressed: () {},
              child: Icon(Icons.search),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.yellow],
              ),
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: "Shaxsiy"),
              Tab(text: "Kanallar"),
              Tab(text: "Guruhlar"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Shaxsiy Chatlar")),
            Center(child: Text("Kanallar listi")),
            Center(child: Text("Barcha guruhlar")),
          ],
        ),
      ),
    );
  }
}

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
