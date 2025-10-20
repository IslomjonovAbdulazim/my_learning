import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskPage extends StatefulWidget {
  const MaskPage({super.key});

  @override
  State<MaskPage> createState() => _MaskPageState();
}

class _MaskPageState extends State<MaskPage> { // (99) 033-09-19 -> (##) ###-##-##
  final mask1 = MaskTextInputFormatter(
    mask: "(##) ###-##-##",
    filter: {
      "#": RegExp(r"[0-9]"),
    },
  );
  final uzMask = MaskTextInputFormatter( // +998 (99) 033-09-19 -> +998 (##) ###-##-##
    mask: "+998 (##) ###-##-##",
    filter: {
      "#": RegExp(r"[0-9]"),
    },
  );
  // 8600 1404 2965 6211 -> #### #### #### ####
  final card = MaskTextInputFormatter(
    mask: "#### #### #### ####",
    filter: {
      "#": RegExp(r"[0-9]"),
    },
  );
  // 01/28 -> ##/##

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
                  mask1.maskText("990330919"),
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(hintText: "Uzbek Number"),
                  inputFormatters: [uzMask],
                  keyboardType: TextInputType.phone,
                ),SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(hintText: "Card"),
                  inputFormatters: [card],
                  keyboardType: TextInputType.phone,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
