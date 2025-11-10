import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  final controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        children: [
          Expanded(
            child: CupertinoButton(
              color: Colors.cyan,
              onPressed: () {},
              child: Text("oldingisi"),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: CupertinoButton(
              color: Colors.orange,
              onPressed: () {
                if (currentPage == 2) return;
                currentPage++;
                controller.jumpToPage(currentPage);
              },
              child: Text("keyingisi"),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(color: Colors.red),
                Container(color: Colors.yellow),
                Container(color: Colors.green),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
