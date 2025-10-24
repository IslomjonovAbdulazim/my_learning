import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class LoadingPackagePage extends StatefulWidget {
  const LoadingPackagePage({super.key});

  @override
  State<LoadingPackagePage> createState() => _LoadingPackagePageState();
}

class _LoadingPackagePageState extends State<LoadingPackagePage> {
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
                LoadingAnimationWidget.fourRotatingDots(
                  color: Colors.red,
                  size: 50,
                ),
                //...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
