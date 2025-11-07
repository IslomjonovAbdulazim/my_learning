import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  List<String> names = [
    'iPhone 15 Pro',
    'Samsung Galaxy S24',
    'MacBook Air M3',
    'Dell XPS 13',
    'Apple Watch Series 9',
    'AirPods Pro 2',
    'PlayStation 5',
    'Xbox Series X',
    'iPad Pro 12.9"',
    'Logitech MX Master',
  ];
  List<int> prices = [1450, 1300, 1600, 1400, 550, 250, 600, 580, 1200, 120];
  List<String> images = [
    // 1-5 — yangilangan (tarmoqdagi) rasm URL'lari
    'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MQD83?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1660803972361',
    'https://m.media-amazon.com/images/I/619BkvKW35L._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/61JGKhqxHxL._SL1500_.jpg',
    'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/ipad-pro-13-select-wifi-spacegray-202210?wid=940&hei=1112&fmt=png-alpha&.v=1664481256763',
    'https://m.media-amazon.com/images/I/61ni3t1ryQL._AC_SL1500_.jpg',
    // 6-10 — avvalgisidan o'zgarmadi
    'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MQD83?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1660803972361',
    'https://m.media-amazon.com/images/I/619BkvKW35L._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/61JGKhqxHxL._SL1500_.jpg',
    'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/ipad-pro-13-select-wifi-spacegray-202210?wid=940&hei=1112&fmt=png-alpha&.v=1664481256763',
    'https://m.media-amazon.com/images/I/61ni3t1ryQL._AC_SL1500_.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online magazin"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: prices.length,
              itemBuilder: (context, index) {
                final imageValue = images[index];
                final nameValue = names[index];
                final priceValue = prices[index];
                return Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.network(imageValue, height: 100, width: 100),
                      Text(nameValue),
                      Text("$priceValue\$"),
                      Spacer(),
                      CupertinoButton(
                        onPressed: () {},
                        color: Colors.yellow,
                        child: Text("Sotib Olish"),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
