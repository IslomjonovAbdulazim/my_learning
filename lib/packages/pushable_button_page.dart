import 'package:flutter/material.dart';
import 'package:pushable_button/pushable_button.dart';

class PushableButtonPage extends StatelessWidget {
  const PushableButtonPage({super.key});

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
                PushableButton(
                  hslColor: HSLColor.fromColor(Colors.red),
                  height: 56,
                  elevation: 8,
                  onPressed: () {
                    print("Bosildi");
                  },
                  child: Text(
                    "Xarid Qilish!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
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
