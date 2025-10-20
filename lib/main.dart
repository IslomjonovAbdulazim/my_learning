import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_learning/packages/carousel_page.dart';
import 'package:my_learning/packages/fonts_page.dart';
import 'package:my_learning/packages/mask_page.dart';
import 'package:my_learning/packages/toast_page.dart';
import 'package:toastification/toastification.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: CarouselPage(),
      ),
    );
  }
}


