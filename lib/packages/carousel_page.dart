import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  List<String> images = [
    "https://i.pinimg.com/736x/bd/ec/ea/bdecea0788a51112bd9355850f1b1697.jpg",
    "https://i.pinimg.com/736x/8d/33/80/8d3380e3d13f368c156df01ada661766.jpg",
    "https://wallpaperswide.com/download/breathtaking_nature-wallpaper-1600x900.jpg",
    "https://i.pinimg.com/736x/cb/64/33/cb643340343d0f6259fdd7492d9fb000.jpg",
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
                  options: CarouselOptions(),
                  items: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
