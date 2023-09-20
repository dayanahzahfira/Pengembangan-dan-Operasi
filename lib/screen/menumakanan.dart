import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/my_search_bar.dart';

class MenuMakanan extends StatefulWidget {
  const MenuMakanan({Key? key}) : super(key: key);

  @override
  _MenuMakananState createState() => _MenuMakananState();
}

class _MenuMakananState extends State<MenuMakanan> {
  final List _makanan = [
    "0dd0ad99-3b95-463e-928c-40c233a78232.jpg",
    "62e5fd3abb4fca899faee891c45376245b182d46.jpg",
    "8432.png_300.png",
    "040488600_1444651308-lengkuas.jpg",
    "jagung.jpg",
    "jahe.png",
    "kangkung.jpg",
    "kunyit.png",
    "lengkuas.jpg",
    "png-transparent-carrot-carrot-leaf-vegetable-food-leaf.png",
    "sawi-png-3-300x237.png",
    "timun.jpg",
  ];

  final List _nama = [
    'Wortel',
    'Tomat',
    'Sawi Manis',
    'Lengkuas',
    "Jagung",
    'Jahe',
    'Kangkung',
    'Kunyit',
    'Lengkuas Batak Toba',
    'Wortel Gantung',
    'Sawi',
    'Timun'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MySearchBar(),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("MENU MAKANAN")],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          // padding: EdgeInsets.all(8),
          // crossAxisSpacing: 15,
          // mainAxisSpacing: 15,
          children: List.generate(
            _makanan.length,
            (i) => Expanded(
              child: Column(
                children: [
                  Image.asset(
                    _makanan[i],
                    fit: BoxFit.cover,
                    // width: 120,
                    width: 100,
                  ),
                  Text(_nama[i]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
