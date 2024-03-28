import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'imagepage.dart';
import 'main.dart';

class HomeScreen6 extends StatefulWidget {
  const HomeScreen6({super.key});

  @override
  State<HomeScreen6> createState() => _HomeScreen6State();
}

class _HomeScreen6State extends State<HomeScreen6> {
  List A=[
    {
      "image":Imagepage.list1,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.lightblue
    },
    {
      "image":Imagepage.list2,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.lightblue
    },
    {
      "image":Imagepage.list3,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.lightblue
    },
    {
      "image":Imagepage.list4,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.lightblue
    },
    {
      "image":Imagepage.list5,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.lightblue
    },
    {
      "image":Imagepage.list6,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.whitecolor
    },
  ];
  List B=[
    {
      "image":Imagepage.list1,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.whitecolor
    },
    {
      "image":Imagepage.list2,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.lightblue
    },
    {
      "image":Imagepage.list3,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.lightblue
    },
    {
      "image":Imagepage.list4,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.whitecolor
    },
    {
      "image":Imagepage.list5,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.whitecolor
    },
    {
      "image":Imagepage.list6,
      "text":"Darrell Trivedi has a new story  up.",
      "text1":" What’s your reaction?",
      "text2":"2 hours ago",
      "image1":Imagepage.threedotsicon,
      "color":colorpage.whitecolor
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width*0.05,right: width*0.05,top: width*0.05,bottom: width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications",
                  style: TextStyle(
                    fontSize: width*0.06,
                    fontWeight: FontWeight.w700
                  ),),
                  Container(
                    height: width * 0.09,
                    width: width * 0.09,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(width * 0.03)),
                    child: Center(child: SvgPicture.asset(Imagepage.searchicon)),
                  )
                ],
              ),
            ),
            Container(
              height: width*0.1,
              color: colorpage.lightblue,
              child: Row(
                children: [
                  SizedBox(width: width*0.04,),
                  Text("New",
                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w500
                  ),),
                ],
              ),
            ),
            Container(
              height: height*0.6,
              width: width*1,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          tileColor: A[index]["color"],
                          leading: Image.asset(A[index]["image"]),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(A[index]["text"],
                                        style:TextStyle(
                                          fontSize: width*0.033,
                                            fontWeight: FontWeight.w500
                                        ) ,),
                                      Text(A[index]["text1"],
                                        style:TextStyle(
                                            fontSize: width*0.033,
                                          fontWeight: FontWeight.w500
                                        ) ,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          subtitle: Text(A[index]["text2"],
                          style: TextStyle(
                            fontSize: width*0.03
                          ),),
                          trailing: SvgPicture.asset(A[index]["image1"],color: Colors.black,),
                        ),

                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox();
                  },
                  itemCount:A.length ),
            ),
            Container(
              height: width*0.1,
              color: colorpage.whitecolor,
              child: Row(
                children: [
                  SizedBox(width: width*0.04,),
                  Text("Earlier",
                    style: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
            ),
            ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        tileColor: B[index]["color"],
                        leading: Image.asset(B[index]["image"]),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(B[index]["text"],
                                      style:TextStyle(
                                          fontSize: width*0.033,
                                          fontWeight: FontWeight.w500
                                      ) ,),
                                    Text(B[index]["text1"],
                                      style:TextStyle(
                                          fontSize: width*0.033,
                                          fontWeight: FontWeight.w500
                                      ) ,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        subtitle: Text(B[index]["text2"],
                          style: TextStyle(
                              fontSize: width*0.03
                          ),),
                        trailing: SvgPicture.asset(B[index]["image1"],color: Colors.black,),
                      ),

                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox();
                },
                itemCount:B.length ),
          ],
        ),
      ),
    );
  }
}
