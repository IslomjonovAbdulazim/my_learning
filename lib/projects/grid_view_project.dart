import 'dart:math';

import 'package:flutter/material.dart';

class GridViewProject extends StatefulWidget {
  const GridViewProject({super.key});

  @override
  State<GridViewProject> createState() => _GridViewProjectState();
}

class _GridViewProjectState extends State<GridViewProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: GridView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.teal[(index % 8 + 1) * 100],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(Icons.star, color: Colors.white, size: 28),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
