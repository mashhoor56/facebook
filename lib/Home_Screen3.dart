import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'imagepage.dart';
import 'main.dart';

class Homescreen3 extends StatefulWidget {
  const Homescreen3({super.key});

  @override
  State<Homescreen3> createState() => _Homescreen3State();
}

class _Homescreen3State extends State<Homescreen3> {
  bool a=false;
  List C=[
    {
      "images":Imagepage.kiran,
      "text":"Kiran Pawar",
      "text1":"1 mutual friend",
      "text2":"9w",
      "text3":"Confirm",
      "text4":"Delete",

    },
    {
      "images":Imagepage.chandrash,
      "text":"Chandresh Yadav",
      "text1":"20 mutual friends",
      "text2":"10w",
      "text3":"Confirm",
      "text4":"Delete",

    },
    {
      "images":Imagepage.marvin,
      "text":"Marvin McKevirn",
      "text1":"1 mutual friends",
      "text2":"12w",
      "text3":"Confirm",
      "text4":"Delete",

    },
    {
      "images":Imagepage.bhumi,
      "text":"Bhumi Patel",
      "text1":"19 mutual friends",
      "text2":"19w",
      "text3":"Confirm",
      "text4":"Delete",

    },
    {
      "images":Imagepage.kiara,
      "text":"Kiara Parmar",
      "text1":"37 mutual friends",
      "text2":"20w",
      "text3":"Confirm",
      "text4":"Delete",

    },
    {
      "images":Imagepage.chandni,
      "text":"Chandani Champa",
      "text1":"24 mutual friends",
      "text2":"24w",
      "text3":"Confirm",
      "text4":"Delete",

    },
    {
      "images":Imagepage.kiran,
      "text":"Kiran Pawar",
      "text1":"1 mutual friend",
      "text2":"9w",
      "text3":"Confirm",
      "text4":"Delete",

    },
    {
      "images":Imagepage.chandrash,
      "text":"Chandresh Yadav",
      "text1":"20 mutual friends",
      "text2":"10w",
      "text3":"Confirm",
      "text4":"Delete",

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
              padding:  EdgeInsets.all(width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Friends",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width*0.06,
                  ),),
                  Container(
                    height: width * 0.1,
                    width: width * 0.11,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(width * 0.03)),
                    child: Center(child: SvgPicture.asset(Imagepage.searchicon)),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: width*0.03,),
                    Container(
                      height: width*0.12,
                      width: width*0.3,
                      decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(width*0.03) ,
                         gradient: LinearGradient(
                             colors:[
                               colorpage.primarycolor,
                               colorpage.secondarycolor
                             ] ,
                         begin: Alignment.centerLeft,
                         end: Alignment.centerRight)
                      ),
                      child: Center(child: Text("Suggestions",
                      style:   TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(width: width*0.03,),
                    Container(
                      height: width*0.12,
                      width: width*0.3,
                      decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(width*0.03) ,
                          gradient: LinearGradient(
                              colors:[
                                colorpage.primarycolor,
                                colorpage.secondarycolor
                              ] ,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      ),
                      child: Center(child: Text("Your Friends",
                        style:   TextStyle(color: Colors.white),)),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: width*0.02,left: width*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Friend request  ",
                                style: TextStyle(color: Colors.black,
                                fontSize: width*0.05)
                              ),
                              TextSpan(
                                text: "  440",
                                  style: TextStyle(color: Colors.red,
                                      fontSize: width*0.05)
                              )
                            ]
                          ),
                      ),
                      InkWell(
                        onTap:() {
                          a=!a;
                          setState(() {

                          });
                        },
                        child: Text(
                          a==false?"See All":"See Less",
                        style: TextStyle(
                            fontSize: width*0.05,
                          color: Colors.blue
                        ),),
                      )
                    ],
                  ),
                ),
           Container(
                 height: height *1,
                 width: width * 1,
                 // color: Colors.blue,
                 child: ListView.separated(
                     scrollDirection: Axis.vertical,
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemBuilder: (context, index) {
                       return Column(
                         children: [
                           ListTile(
                             leading: Container(
                                 height: width*0.2,
                                 width: width*0.2,
                                 child: Image.asset(C[index]["images"])),
                             title: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text(C[index]["text"],style: TextStyle(fontSize: width*0.04),),
                                 Text(C[index]["text2"])
                               ],
                             ),
                             subtitle: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(C[index]["text1"],style:
                                   TextStyle(fontSize: width*0.035),),
                                 Row(
                                   children: [
                                    Container(
                                      height: width*0.08,
                                      width: width*0.32,

                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              colorpage.primarycolor,
                                              colorpage.secondarycolor
                                            ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight),
                                        borderRadius: BorderRadius.circular(width*0.03)
                                      ),
                                      child: Center(child: Text(C[index]["text3"],
                                      style: TextStyle(
                                        color: Colors.white
                                      ),)),
                                    ),
                                    SizedBox(width: width*0.02,),
                                    InkWell(onTap: () {
                                      showDialog(context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Confirm delete ?"),
                                              actions: [
                                                Container(
                                                    height: width*0.1,
                                                    width: width*0.1,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(width*0.03),
                                                        gradient: LinearGradient(colors:[
                                                          colorpage.primarycolor,
                                                          colorpage.secondarycolor
                                                        ],
                                                            begin: Alignment.centerLeft,
                                                            end: Alignment.centerRight)
                                                    ),
                                                    child: Center(child: Text("Yes",
                                                    style: TextStyle(color: Colors.white),))
                                                ),
                                                SizedBox(width: width*0.01),
                                                InkWell(onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                    child: Container(
                                                        height: width*0.1,
                                                        width: width*0.1,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(width*0.03),
                                                            gradient: LinearGradient(colors:[
                                                            colorpage.primarycolor,
                                                            colorpage.secondarycolor
                                                          ],
                                                          begin: Alignment.centerLeft,
                                                          end: Alignment.centerRight)
                                                        ),
                                                        child: Center(child: Text("No",style:
                                                          TextStyle(color: Colors.white),)))),
                                                SizedBox(width: width*0.02),
                                              ],
                                            );
                                          },);
                                    },
                                      child: Container(
                                        height: width*0.08,
                                        width: width*0.32,

                                        decoration: BoxDecoration(
                                         color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(width*0.03)
                                        ),
                                        child: Center(child: Text(C[index]["text4"],
                                        style: TextStyle(
                                          color: Colors.black
                                        ),)),
                                      ),
                                    ),
                                   ],
                                 )
                               ],
                             ),
                             // trailing: Text(C[index]["text2"]),

                           ),
                           SizedBox(height: width*0.02,),

                         ],
                       );
                     },
                     separatorBuilder: (context, index) {
                       return SizedBox();
                     },
                     itemCount: a==true?C.length:4),
           ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
