import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  List<String> names = [
    "Ali",
    "Vali",
    "Sardor",
    "Javohir",
    "Dilshod",
    "Baxtiyor",
    "Bekzod",
    "Ulug‘bek",
    "Oybek",
    "Shohruh",
    "Jasur",
    "Otabek",
    "Anvar",
    "Rustam",
    "Islom",
    "Azizbek",
    "Bobur",
    "Kamol",
    "Abdulla",
    "Shuhrat",
    "Malika",
    "Dilnoza",
    "Gulbahor",
    "Zilola",
    "Madina",
    "Rayhona",
    "Shahnoza",
    "Nilufar",
    "Gulnora",
    "Lola",
    "Dildora",
    "Feruza",
    "Shaxzoda",
    "Nigora",
    "Laylo",
    "Zarina",
    "Muxlisa",
    "Sevinch",
    "Maftuna",
    "Go‘zal",
    "Mavluda",
    "Umida",
    "Shoira",
    "Ozoda",
    "Nasiba",
    "Rano",
    "Muslima",
    "Gulsanam",
    "Xadicha",
    "Robiya",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                // horizontal (chapdan onga)
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      final value = names[index];
                      return Text(
                        value + " | ",
                        style: GoogleFonts.nunito(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                  ),
                ),
                // vertical (tepadan pastga)
                Expanded(
                  child: ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      final value = names[index];
                      return Text(
                        value,
                        style: GoogleFonts.nunito(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
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
