import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_learning/packages/animated_text_page.dart';
import 'package:my_learning/packages/audioplayers_page.dart';
import 'package:my_learning/packages/font_awesome_page.dart';
import 'package:my_learning/packages/loading_package_page.dart';
import 'package:my_learning/packages/url_launcher_page.dart';
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
        home: AudioplayersPage(),
      ),
    );
  }
}


