// https://pub.dev/packages/toastification

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastPage extends StatefulWidget {
  const ToastPage({super.key});

  @override
  State<ToastPage> createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
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
                CupertinoButton(
                  onPressed: () {
                    toastification.show(
                      title: Text("Muvaffaqiyatli boldi"),
                      description: Text(
                        "Siz muvaffaqiyatli royxatdan otdingiz",
                      ),
                      autoCloseDuration: Duration(seconds: 3),
                      type: ToastificationType.success,
                      borderRadius: BorderRadius.circular(24),
                      style: ToastificationStyle.fillColored,
                      showProgressBar: true,
                    );
                  },
                  child: Text("Success Fill"),
                ),
                CupertinoButton(
                  onPressed: () {
                    toastification.show(
                      title: Text("Muvaffaqiyatli boldi"),
                      description: Text(
                        "Siz muvaffaqiyatli royxatdan otdingiz",
                      ),
                      autoCloseDuration: Duration(seconds: 2),
                      type: ToastificationType.success,
                      borderRadius: BorderRadius.circular(24),
                      style: ToastificationStyle.flatColored,
                      showProgressBar: true,
                      alignment: Alignment.bottomCenter,
                    );
                  },
                  child: Text("Success Flat"),
                ),
                CupertinoButton(
                  onPressed: () {
                    toastification.show(
                      title: Text("Xatolik yuzberdi"),
                      description: Text("Internetingizni tekshiring"),
                      autoCloseDuration: Duration(seconds: 1),
                      type: ToastificationType.error,
                      borderRadius: BorderRadius.circular(24),
                      showProgressBar: true,
                      applyBlurEffect: true,
                    );
                  },
                  child: Text("Error Fill"),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Text("Error Flat"),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Text("Warning Fill"),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Text("Warning Flat"),
                ),CupertinoButton(
                  onPressed: () {},
                  child: Text("Info Fill"),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Text("Info Flat"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
