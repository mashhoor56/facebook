import 'package:facebook/messanger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Navigationchat extends StatefulWidget {
  const Navigationchat({super.key});

  @override
  State<Navigationchat> createState() => _NavigationchatState();
}

class _NavigationchatState extends State<Navigationchat> {
  int index=0;
  List a=[
     const Messanger(),
    Container(

      child: Text("Groups",
      style: TextStyle(fontSize: width*0.05),),
    ),
    Container(
      child: Text("Add",
          style: TextStyle(fontSize: width*0.05)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.red,
          backgroundColor: Colors.grey.shade200,
          selectedItemColor: Colors.blueAccent,
          selectedFontSize: 15,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal
          ),
          unselectedIconTheme: const IconThemeData(
              color: Colors.grey,
          ),
          selectedIconTheme: const IconThemeData(
              color: Colors.blueAccent
          ),
          showUnselectedLabels: false,
          showSelectedLabels: true,
          onTap: (value) {
            index=value;
            setState(() {
            });
          },
          currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon:Icon(Icons.chat_bubble),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: ""
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.assistant_navigation),
              label:""
          )
        ],
      ),
      body: Center(
        child: a[index],
      ),
    );
  }
}
