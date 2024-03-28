import 'package:facebook/Profile_login.dart';
import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'imagepage.dart';
import 'main.dart';

class Homesceen7 extends StatefulWidget {
  const Homesceen7({super.key});

  @override
  State<Homesceen7> createState() => _Homesceen7State();
}

class _Homesceen7State extends State<Homesceen7> {
  bool a=false;
  List A = [
    {
      "text": "Jobs",
      "image": Imagepage.job,
    },
    {
      "text": "COVID-19 information Center",
      "image": Imagepage.covid19,
    },
    {
      "text": "Marketplace",
      "image": Imagepage.globe,
    },
    {
      "text": "Friends",
      "image": Imagepage.friends,
    },
    {
      "text": "Events",
      "image": Imagepage.events,
    },
    {
      "text": "Gaming",
      "image": Imagepage.gaming,
    },
    {
      "text": "Weather",
      "image": Imagepage.cloud,
    },
    {
      "text": "Saved",
      "image": Imagepage.saved,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.05,
                  right: width * 0.05,
                  top: width * 0.05,
                  bottom: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                        fontSize: width * 0.06, fontWeight: FontWeight.w700),
                  ),
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
              height: width * 0.1,
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text("Shorctus"),
                ],
              ),
            ),
            Container(
              height: height * 0.5,
              width: width*1,
              // color: Colors.blue,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: width * 0.1,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.03),
                              border: Border.all(color: Colors.blue)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(A[index]["text"],
                              style: TextStyle(
                                color: Colors.blue
                              ),),
                              SizedBox(width: width*0.02,),
                              SvgPicture.asset(A[index]["image"])
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: width*0.02,);
                  },
                  itemCount: A.length),
            ),
            InkWell(onTap: () {
              a=!a;
              setState(() {

              });
            },
              child: Container(
                height: width*0.1,
                width: width*0.9,
                child: Center(child: a!= true?Text("See less",
                style: TextStyle(
                  color: Colors.grey.shade500
                ),):
                Text("See more",
                  style: TextStyle(
                      color: Colors.grey.shade500
                  ),)

                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    border: Border.all(color: Colors.grey.shade600)),
              ),
            ),

        a!=true?  Container(
              height: width*0.6,
              width: width*1,
             // color: Colors.blue,
              child: Column(
                children: [
                  Divider(
                    color: Colors.grey.shade500,
                    height: width*0.1,
                    thickness: width*0.002,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Community resources"),
                      SizedBox(width: width*0.015,),
                      SvgPicture.asset(Imagepage.community),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade500,
                    height: width*0.1,
                    thickness: width*0.002,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Help & Support"),
                      SizedBox(width: width*0.015,),
                      SvgPicture.asset(Imagepage.lightbulb),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade500,
                    height: width*0.1,
                    thickness: width*0.002,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Settings & Privacy"),
                      SizedBox(width: width*0.015,),
                      SvgPicture.asset(Imagepage.settings),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade500,
                    height: width*0.1,
                    thickness: width*0.002,
                  ),

                ],
              ),
            ):SizedBox(height: width*0.01,),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.only(topRight: Radius.circular(width*0.08),
                          topLeft: Radius.circular(width*0.08))
                  ),
                  context: context, builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return Container(
                        height: width*0.7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(" Are you sure you want to logout",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: width*0.05
                              ),),
                            Column(
                              children: [
                                InkWell(onTap: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => profilelogin(),), (route) => false);
                                },
                                  child: Container(
                                    height: width*0.1,
                                    width: width*0.5,
                                    child: Center(child: Text("Yes",
                                      style: TextStyle(color: Colors.white),)),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              colorpage.primarycolor,
                                              colorpage.secondarycolor
                                            ],
                                            begin:Alignment.centerLeft,
                                            end: Alignment.centerRight),
                                        borderRadius: BorderRadius.circular(width*0.03)
                                    ),
                                  ),
                                ),
                                SizedBox(height: width*0.07,),
                                InkWell(onTap: () {
                                  Navigator.pop(context);
                                },
                                  child: Container(
                                    height: width*0.1,
                                    width: width*0.5,
                                    child: Center(child: Text("No",
                                      style: TextStyle(color: Colors.white),)),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              colorpage.primarycolor,
                                              colorpage.secondarycolor
                                            ],
                                            begin:Alignment.centerLeft,
                                            end: Alignment.centerRight),
                                        borderRadius: BorderRadius.circular(width*0.03)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },);
                },);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Log out",
                    style:TextStyle(
                        color: Colors.red
                    ) ,),
                  SizedBox(width: width*0.015,),
                  Icon(Icons.logout,color: Colors.red,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//     onTap: () {
//   setState(() {
//
//   });
//
//   showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//            title: Text(
//              "Confirm Logout ?"
//            ),
//           actions: [
//             InkWell(onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => profilelogin(),));
//             },
//                 child: Text("Yes")),
//             SizedBox(width: width*0.01),
//             Text("No"),
//             SizedBox(width: width*0.02),
//           ],
//         );
//       },);
// },