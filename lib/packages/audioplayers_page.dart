import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              children: [
                Text(
                  "Ko'rgim Kelar - Sevara Nazarkhanova",
                  style: GoogleFonts.nunito(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    height: 1,
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
