import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_learning/packages/fonts_page.dart';

class Navigation4Project extends StatefulWidget {
  const Navigation4Project({super.key});

  @override
  State<Navigation4Project> createState() => _Navigation4ProjectState();
}

class _Navigation4ProjectState extends State<Navigation4Project> {
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
                Text("444", style: TextStyle(fontSize: 64)),
                CupertinoButton(
                  onPressed: () {
                    Get.offAll(FontsPage());
                  },
                  child: Text("OFF ALL"),
                ),
                CupertinoButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Back"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
