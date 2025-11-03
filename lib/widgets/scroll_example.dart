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
                  for (int i = 0; i < 10; i++)
                    Container(
                      height: 200,
                      color: i.isEven ? Colors.red : Colors.indigo,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
