import 'package:flutter/material.dart';

class Navigation3Project extends StatefulWidget {
  const Navigation3Project({super.key});

  @override
  State<Navigation3Project> createState() => _Navigation3ProjectState();
}

class _Navigation3ProjectState extends State<Navigation3Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("333", style: TextStyle(fontSize: 64)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
