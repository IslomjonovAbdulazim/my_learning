import 'package:flutter/material.dart';

class AudioplayersPage extends StatefulWidget {
  const AudioplayersPage({super.key});

  @override
  State<AudioplayersPage> createState() => _AudioplayersPageState();
}

class _AudioplayersPageState extends State<AudioplayersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
