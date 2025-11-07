import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewProject extends StatefulWidget {
  const ListViewProject({super.key});

  @override
  State<ListViewProject> createState() => _ListViewProjectState();
}

class _ListViewProjectState extends State<ListViewProject> {
  List<String> titles = [
    "IT dan uyga vazifani bajarish",
    "Matematika testini yechish",
    "Kitob o‘qish – 20 sahifa",
    "Ingliz tili darsiga tayyorlanish",
    "Sport zaliga borish",
    "Do‘kondan kerakli narsalarni olish",
  ];

  List<String> deadlines = [
    "12:00",
    "14:00",
    "16:30",
    "18:00",
    "19:30",
    "21:00",
  ];

  List<bool> states = [
    true,
    false,
    false,
    false,
    false,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: ListView.builder(
              itemCount: titles.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Checkbox(
                      value: states[index],
                      onChanged: (value) {
                        states[index] = value!;
                        setState(() {});
                      },
                    ),
                    title: Text(
                      titles[index],
                      style: GoogleFonts.nunito(
                        decoration: states[index] ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    subtitle: Text(deadlines[index] + " da bajarish"),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
