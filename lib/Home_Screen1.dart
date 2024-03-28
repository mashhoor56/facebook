import 'package:facebook/HomeScreen4.dart';
import 'package:facebook/HomeScreen5.dart';
import 'package:facebook/Home_Screen2.dart';
import 'package:facebook/Home_Screen3.dart';
import 'package:facebook/Home_Screen6.dart';
import 'package:facebook/Home_screen7.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/imagepage.dart';
import 'package:facebook/messanger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '_navigation_chat.dart';
import 'imagepage.dart';
import 'imagepage.dart';
import 'main.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;

  List image = [
    {"images": Imagepage.maskgroup,
      "images1": Imagepage.add,
      "text": ""},
    {
      "images": Imagepage.rectangle,
      "images1": Imagepage.person1,
      "text": "Vish Patil"
    },
    {
      "images": Imagepage.rectanglecamera,
      "images1": Imagepage.look1,
      "text": "Rakesh Shetty"
    },
    {
      "images": Imagepage.rectanglealian,
      "images1": Imagepage.look2,
      "text": "Akash Bolre"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: GradientText("facebook",
              colors: [colorpage.primarycolor, colorpage.secondarycolor]),
          actions: [
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Navigationchat(),));
            },
                child: SvgPicture.asset(Imagepage.messenger)),
            SizedBox(width: width*0.02,),
          ],

          backgroundColor: Colors.white10,
          elevation: 0,
          bottom: TabBar(
              indicatorColor: Colors.blue,
              indicatorWeight: width * 0.01,
              // indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              tabs: [
                Tab(
                  child: SvgPicture.asset(
                    Imagepage.homeactiveicon,
                  ),
                ),
                Tab(
                  child: SvgPicture.asset(
                    Imagepage.groupicon,
                  ),
                ),
                Tab(
                  child: SvgPicture.asset(
                    Imagepage.personalicon,
                  ),
                ),
                Tab(
                  child: SvgPicture.asset(
                    Imagepage.videoicon,
                  ),
                ),
                Tab(
                  child: SvgPicture.asset(
                    Imagepage.bell,
                  ),
                ),
                Tab(
                    child: SvgPicture.asset(
                  Imagepage.menuicon,
                ))
              ]),
        ),
        body: Container(
          width: width,
          height: height*0.8,
          child: TabBarView(
            children: [
             Homescreen2(),
              Homescreen3(),
              HomeScreen4(),
              Homescreen5(),
              HomeScreen6(),
              Homesceen7(),
            ],
          ),
        ),
      ),
    );
  }
}

// RichText(
// text:TextSpan(
// children: [
// TextSpan(
// text: "Deven mestry"
// ),
// TextSpan(
// text: "is with",
// style: TextStyle(
// fontWeight: FontWeight.w300
// ),
// ),
// TextSpan(
// text: "Mahesh"
// )
// ]
// ))
