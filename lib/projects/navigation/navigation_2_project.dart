import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_learning/projects/navigation/navigation_4_project.dart';

class Navigation2Project extends StatefulWidget {
  const Navigation2Project({super.key});

  @override
  State<Navigation2Project> createState() => _Navigation2ProjectState();
}

class _Navigation2ProjectState extends State<Navigation2Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("222", style: TextStyle(fontSize: 64)),
                CupertinoButton(
                  onPressed: () {
                    Get.off(Navigation4Project());
                  },
                  child: Text("Go to 4"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
