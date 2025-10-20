import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class SlidablePage extends StatefulWidget {
  const SlidablePage({super.key});

  @override
  State<SlidablePage> createState() => _SlidablePageState();
}

class _SlidablePageState extends State<SlidablePage> {
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
                Slidable(
                  startActionPane: ActionPane(
                    extentRatio: 0.25,
                    motion: ScrollMotion(),
                    children: [

                      AspectRatio(
                        aspectRatio: 1,
                        child: CupertinoButton(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  endActionPane: ActionPane(
                    motion: ScrollMotion(),
                    extentRatio: 0.25,
                    children: [
                      SizedBox(width: 8),
                      AspectRatio(
                        aspectRatio: 1,
                        child: CupertinoButton(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text("Alisher"),
                    subtitle: Text("Salom, yaxshimisiz"),
                    tileColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
