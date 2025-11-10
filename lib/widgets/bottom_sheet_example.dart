import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
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
                  color: Colors.yellow,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.red,
                      builder: (context) {
                        return SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(),
                                Text("Amallar"),
                                CupertinoButton(
                                  onPressed: () {},
                                  child: Text("O'chirish"),
                                ),

                                CupertinoButton(
                                  onPressed: () {},
                                  child: Text("Qo'shish"),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text("Bottom Sheet"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
