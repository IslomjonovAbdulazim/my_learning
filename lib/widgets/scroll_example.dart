import 'package:flutter/material.dart';

class ScrollExample extends StatefulWidget {
  const ScrollExample({super.key});

  @override
  State<ScrollExample> createState() => _ScrollExampleState();
}

class _ScrollExampleState extends State<ScrollExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(height: 200, color: Colors.red),
                  Container(height: 200, color: Colors.yellow),
                  Container(height: 200, color: Colors.pink),
                  Container(height: 200, color: Colors.black),
                  Container(height: 200, color: Colors.orange),
                  Container(height: 200, color: Colors.blue),
                  Container(height: 200, color: Colors.purple),
                  Container(height: 200, color: Colors.indigo),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
