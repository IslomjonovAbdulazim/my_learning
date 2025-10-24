import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomePage extends StatefulWidget {
  const FontAwesomePage({super.key});

  @override
  State<FontAwesomePage> createState() => _FontAwesomePageState();
}

class _FontAwesomePageState extends State<FontAwesomePage> {
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
                FaIcon(FontAwesomeIcons.houseFire, size: 60),
                SizedBox(height: 16),
                FaIcon(FontAwesomeIcons.userDoctor, size: 60, color: Colors.red),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
