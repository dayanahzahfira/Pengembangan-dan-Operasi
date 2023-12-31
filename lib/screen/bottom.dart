
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homescreen.dart';
import 'package:flutter_application_1/screen/notification.dart';
import 'package:flutter_application_1/screen/search.dart';
class bottom extends StatefulWidget {
  const bottom({ Key? key }) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  List halaman = [homescreen(),notification(),search()];
  int params = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: halaman[params],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: params,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
      ],
      
      onTap: (value){
        setState(() {
          params = value;
        });
      },
      ),
    );
  }
}