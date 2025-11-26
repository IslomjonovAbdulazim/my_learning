import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorPage extends StatefulWidget {
  const SmoothPageIndicatorPage({super.key});

  @override
  State<SmoothPageIndicatorPage> createState() =>
      _SmoothPageIndicatorPageState();
}

class _SmoothPageIndicatorPageState extends State<SmoothPageIndicatorPage> {
  int activeIndex = 0;
  final colors = [
    Colors.red,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.pink,
  ];

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
                CarouselSlider(
                  items: colors
                      .map(
                        (value) => Container(
                          decoration: BoxDecoration(
                            color: value,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    initialPage: activeIndex,
                    onPageChanged: (value, a) {
                      activeIndex = value;
                      setState(() {});
                    },
                    enlargeCenterPage: true,
                  ),
                ),
                SizedBox(height: 16),
                AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: 6,
                  onDotClicked: (value) {
                    activeIndex = value;
                    setState(() {});
                  },
                  effect: ScrollingDotsEffect(
                    activeDotColor: Colors.red,
                    dotColor: Colors.grey.shade200,
                  ),
                ),
                CupertinoButton(
                  onPressed: () {
                    if (activeIndex == 5) return;
                    activeIndex++;
                    setState(() {});
                  },
                  child: Text("Next"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
