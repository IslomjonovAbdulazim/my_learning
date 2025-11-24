import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_learning/packages/animated_text_page.dart';
import 'package:my_learning/packages/audioplayers_page.dart';
import 'package:my_learning/packages/font_awesome_page.dart';
import 'package:my_learning/packages/loading_package_page.dart';
import 'package:my_learning/packages/pushable_button_page.dart';
import 'package:my_learning/packages/url_launcher_page.dart';
import 'package:my_learning/projects/grid_view_project.dart';
import 'package:my_learning/projects/list_view_horizontal_project.dart';
import 'package:my_learning/projects/list_view_project.dart';
import 'package:my_learning/projects/navigation/navigation_1_project.dart';
import 'package:my_learning/widgets/app_bar_example.dart';
import 'package:my_learning/widgets/bottom_navigation_bar_example.dart';
import 'package:my_learning/widgets/bottom_sheet_example.dart';
import 'package:my_learning/widgets/clip_r_rect_example.dart';
import 'package:my_learning/widgets/drawer_example.dart';
import 'package:my_learning/widgets/grid_view_example.dart';
import 'package:my_learning/widgets/list_tile_example.dart';
import 'package:my_learning/widgets/list_view_example.dart';
import 'package:my_learning/widgets/page_view_example.dart';
import 'package:my_learning/widgets/scroll_example.dart';
import 'package:my_learning/widgets/snack_bar_example.dart';
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
        home: Navigation1Project(),
      ),
    );
  }
}


