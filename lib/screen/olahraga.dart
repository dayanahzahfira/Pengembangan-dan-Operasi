import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/my_search_bar.dart';

class Olahraga extends StatefulWidget {
  const Olahraga({Key? key}) : super(key: key);

  @override
  _OlahragaState createState() => _OlahragaState();
}

class _OlahragaState extends State<Olahraga> {
  @override
  Widget build(BuildContext context) {
    final List<String> _images = [
      "laripagi.jpg",
      "cocok-untuk-pemula-begini-cara-push-up-yang-benar-1605433344.jpg",
      "Blog_5-Manfaat-Senam-Aerobik-Untuk-Kesehatan-Tubuhmu_825x355px.jpg",
      "5fe4773b2e3a6.jpg"
    ];

    return Scaffold(
      appBar: AppBar(
        title: MySearchBar(),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("OLAHRAGA")],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  children: List.generate(
                      _images.length,
                      (i) => Column(
                            children: [
                              SizedBox(
                                width: 350,
                                child: Image.asset(
                                  _images[i],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ))),
            ],
          ),
        ),
      ),
    );
  }
}
