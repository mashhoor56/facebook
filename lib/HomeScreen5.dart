import 'package:facebook/colorpage.dart';
import 'package:facebook/following(watch).dart';
import 'package:facebook/foryou(WATCH).dart';
import 'package:facebook/gaming(watch).dart';
import 'package:facebook/live(watch).dart';
import 'package:facebook/music(watch).dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Homescreen5 extends StatefulWidget {
  const Homescreen5({super.key});

  @override
  State<Homescreen5> createState() => _Homescreen5State();
}

class _Homescreen5State extends State<Homescreen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: width*0.05,),
                Text("Watch",
                style: TextStyle(
                  fontSize: width*0.07,
                  fontWeight: FontWeight.w700
                ),),
              ],
            ),
            SizedBox(height: width*0.04,),
            Center(
              child: Container(
                height: width*0.1,
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.03),
                  gradient: LinearGradient(
                      colors: [
                    colorpage.primarycolor,
                        colorpage.secondarycolor
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)
                ),
                child: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize:TabBarIndicatorSize.label,
                  physics: BouncingScrollPhysics(),
                  tabs: [
                    Tab(
                      child: Text("For you",
                      style: TextStyle(fontSize: width*0.03),),
                    ),
                    Tab(
                      child: Text("Live",
                        style: TextStyle(fontSize: width*0.03),),
                    ),
                    Tab(
                      child: Text("Music",
                        style: TextStyle(fontSize: width*0.03),),
                    ),
                    Tab(
                      child: Text("Gaming",
                        style: TextStyle(fontSize: width*0.03),),
                    ),
                    Tab(
                      child: Text("Following",
                        style: TextStyle(fontSize: width*0.03),),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                  children: [
                Foryou(),
                    Live(),
                    Music(),
                    Gaming(),
                    Following()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
