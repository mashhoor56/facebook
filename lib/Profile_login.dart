import 'package:facebook/Home_Screen1.dart';
import 'package:facebook/Home_Screen2.dart';
import 'package:facebook/Join_facebook.dart';
import 'package:facebook/Login_screen1.dart';
import 'package:facebook/Login_screen2.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class profilelogin extends StatefulWidget {
  const profilelogin({super.key});

  @override
  State<profilelogin> createState() => _profileloginState();
}

class _profileloginState extends State<profilelogin> {
  @override
  Widget build(BuildContext context) {
    // width=MediaQuery.of(context).size.width;
    // height=MediaQuery.of(context).size.height;
    print("profile page");
    print(width);
    print(height);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: width*0.3,),
            Center(child: Image(image: AssetImage(Imagepage.logo2))),
          SizedBox(
            height: width*0.1,
          ),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Column(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen1(),));
                  },
                    child: ListTile(

                      leading:Stack(
                        children: [
                          Container(
                            height: width*0.3,
                            width: width*0.18,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                          height: width*0.14,
                                          width: width*0.14,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                            borderRadius: BorderRadius.circular(width*0.02)
                                          ),
                                          child: Image(image: AssetImage(Imagepage.profile)),
                                        ),
                            ],
                          ),
                          Positioned(
                            bottom: width*0.09,
                            right: width*0.016,
                            child: CircleAvatar(
                              radius: width*0.035,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: width*0.03,
                                backgroundColor: Colors.red,
                                child: Text("7",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ),
                        ],
                      ),
                      title:   Text("Sanjay shendy"),
                      trailing:
                      SvgPicture.asset(Imagepage.Threebot),

                    ),
                  ),
                  SizedBox(height:width*0.05 ,),
                  // Row(
                  //   children: [
                  //     // SizedBox(width: ,),
                  //     Image(image: AssetImage(Imagepage.Addicon),),
                  //     SizedBox(width:width*0.05 ,),
                  //     Text("Log Into Another Account")
                  //   ],
                  // ),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen1(),));
                  },
                    child: ListTile(
                      leading:  Image(image: AssetImage(Imagepage.icon1),),
                      title:  Text("Log Into Another Account"),

                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen1(),));
                  },
                    child: ListTile(
                      leading:  Image(image: AssetImage(Imagepage.icon2),),
                      title:  Text("Find Your Account"),

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.3,),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => joinfacebook(),));
              setState(() {

              });
            },
              child: Container(
                height: width*0.12,
                width: width*0.8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        colorpage.primarycolor,
                        colorpage.secondarycolor,
                      ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                    color: Colors.blue,
                  borderRadius: BorderRadius.circular(width*0.05),
                ),
                child: Center(child: Text("Create New Facebook Account",
                style:  TextStyle(color: Colors.white),)),
              ),
            ),
            SizedBox(height: width*0.01,),
          ],
        ),
      ),
    );
  }
}
