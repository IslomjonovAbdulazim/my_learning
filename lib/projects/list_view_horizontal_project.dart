import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewHorizontalProject extends StatefulWidget {
  const ListViewHorizontalProject({super.key});

  @override
  State<ListViewHorizontalProject> createState() =>
      _ListViewHorizontalProjectState();
}

class _ListViewHorizontalProjectState extends State<ListViewHorizontalProject> {
  List<String> categories = [
    "Barchasi",
    "O‘qish",
    "Ish",
    "Sport",
    "Oilaviy ishlar",
    "Do‘stlar bilan uchrashuv",
    "Xaridlar",
    "Sayohat",
    "Shaxsiy rivojlanish",
    "Dam olish",
  ];

  String selected = "Barchasi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: SizedBox(
              height: 56,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      selected = categories[index];
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      padding: EdgeInsets.only(left: 24, right: 24),
                      decoration: BoxDecoration(
                        color: selected == categories[index]
                            ? Colors.blue
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(categories[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
