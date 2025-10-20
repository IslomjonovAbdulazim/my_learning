import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  List<String> images = [
    "assets/img1.png",
    "assets/img2.png",
    "assets/img3.png",
    "assets/img4.png",
  ];
  List<String> names = [
    "Abduazim",
    "Bahodir",
    "Fayzulloh",
    "Abdurahmon",
    "Behzod",
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
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    viewportFraction: 0.85,
                  ),
                  items: images
                      .map(
                        (value) => ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            value,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList(),
                ),
                Divider(),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: names
                      .map(
                        (value) => Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              value,
                              style: GoogleFonts.tangerine(
                                color: Colors.white,
                                fontSize: 60,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
