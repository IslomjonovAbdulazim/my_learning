import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.grey],
                  stops: [0, 0.8],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Center(
                child: Icon(Icons.grade, size: 56),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("PDP Junior"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("PDP Junior"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("PDP Junior"),
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  onPressed: () {},
                  child: Text("Open Drawer"),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
