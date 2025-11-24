import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_learning/projects/navigation/navigation_2_project.dart';

class Navigation1Project extends StatefulWidget {
  const Navigation1Project({super.key});

  @override
  State<Navigation1Project> createState() => _Navigation1ProjectState();
}

class _Navigation1ProjectState extends State<Navigation1Project> {
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
                Text("111", style: TextStyle(fontSize: 64)),
                CupertinoButton(
                  onPressed: () {
                    Get.to(Navigation2Project());
                  },
                  child: Text("Go to 2"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
