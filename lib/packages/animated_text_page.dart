import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTextPage extends StatefulWidget {
  const AnimatedTextPage({super.key});

  @override
  State<AnimatedTextPage> createState() => _AnimatedTextPageState();
}

class _AnimatedTextPageState extends State<AnimatedTextPage> {
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
                AnimatedTextKit(
                  displayFullTextOnTap: true,
                  totalRepeatCount: 2,
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      "D8 PDP Junior",
                      textStyle: GoogleFonts.nunito(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        "D8 Guruhi",
                        textStyle: GoogleFonts.inter(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      RotateAnimatedText(
                        "PDP Juniorda oqiydi",
                        textStyle: GoogleFonts.inter(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      RotateAnimatedText(
                        "Toshkent shahrida joylashgan",
                        textStyle: GoogleFonts.inter(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText(
                        "D8 Guruhi",
                        textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      FadeAnimatedText(
                        "Bugun darsda",
                        textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      FadeAnimatedText(
                        "AnimatedTextKit",
                        textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),

                DefaultTextStyle(
                  style: GoogleFonts.nunito(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText("RotateAnimatedText"),
                      FadeAnimatedText("FadeAnimatedText"),
                      TypewriterAnimatedText("TypewriterAnimatedText"),
                      ScaleAnimatedText("ScaleAnimatedText"),
                      ColorizeAnimatedText(
                        "ColorizeAnimatedText",
                        textStyle: GoogleFonts.nunito(fontSize: 35),
                        colors: [Colors.red, Colors.black, Colors.yellow],
                      ),
                      WavyAnimatedText("WavyAnimatedText"),
                      FlickerAnimatedText("FlickerAnimatedText"),
                      ScrambleAnimatedText("990330919"),
                      BounceAnimatedText("BounceAnimatedText"),
                    ],
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
