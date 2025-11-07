import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarExample extends StatefulWidget {
  const SnackBarExample({super.key});

  @override
  State<SnackBarExample> createState() => _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {
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
                CupertinoButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Bu SnackBar"),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  child: Text("Show Snackbar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
