import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioplayersPage extends StatefulWidget {
  const AudioplayersPage({super.key});

  @override
  State<AudioplayersPage> createState() => _AudioplayersPageState();
}

class _AudioplayersPageState extends State<AudioplayersPage> {
  final player = AudioPlayer();

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
                // ... Slider

                // ... Controllers
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      child: FaIcon(FontAwesomeIcons.backward, size: 30),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        if (kIsWeb) {
                          player.play(DeviceFileSource("assets/kurgim_kelar.mp3"));
                        } else {
                          player.play(AssetSource("assets/kurgim_kelar.mp3"));
                        }
                      },
                      child: FaIcon(FontAwesomeIcons.play, size: 30),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: FaIcon(FontAwesomeIcons.forward, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
