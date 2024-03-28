import 'dart:io';

import 'package:facebook/colorpage.dart';
import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'main.dart';

class HomeScreen4 extends StatefulWidget {
  const HomeScreen4({super.key});

  @override
  State<HomeScreen4> createState() => _HomeScreen4State();
}

class _HomeScreen4State extends State<HomeScreen4> {
  File? file;

  List<int> like = [];

  pickimage(ImageSource source) async {
    final pickedFile =
        await ImagePicker.platform.getImageFromSource(source: source);
    file = File(pickedFile!.path);
    if (mounted) {
      file = File(pickedFile!.path);
      setState(() {});
    }
  }

  bool a = false;
  List A = [
    {
      "image": Imagepage.profilephoto,
      "text": "Sanjay Shendy",
      "text1": "10 h",
      "image1": Imagepage.earth,
      "image2": Imagepage.threedotsicon,
      "text2": "You never been expected like as your friend can be look as \n"
          "much cute in specific costume, and suddenly if you have\n"
          " seen his picture on Facebook, then probably your comment\n"
          " on photo can be like as. “Cuteness overloaded!”. ",
      "image3": Imagepage.dear,
      "text3": "1K",
      "text4": "400 Comments . 270 Shares "
    },
    {
      "image": Imagepage.profilephoto,
      "text": "Sanjay Shendy",
      "text1": "10 h",
      "image1": Imagepage.earth,
      "image2": Imagepage.threedotsicon,
      "text2": "You never been expected like as your friend can be look as \n"
          "much cute in specific costume, and suddenly if you have\n"
          " seen his picture on Facebook, then probably your comment\n"
          " on photo can be like as. “Cuteness overloaded!”. ",
      "image3": Imagepage.spider,
      "text3": "1K",
      "text4": "400 Comments . 270 Shares "
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: width * 0.85,
              width: width * 1,
              // color: Colors.blue,
              child: Container(
                height: width * 0.68,
                width: width * 1,
                child: Stack(
                  children: [
                    Image.asset(Imagepage.villa),
                    Positioned(
                        top: width * 0.45,
                        left: width * 0.34,
                        child: Stack(
                          children: [
                            file == null
                                ? Container(
                                    height: width * 0.3,
                                    width: width * 0.3,
                                    decoration: BoxDecoration(
                                        // color: Colors.grey.shade300,
                                        borderRadius:
                                            BorderRadius.circular(width * 0.03),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                Imagepage.personalprofile))),
                                  )
                                : Container(
                                    height: width * 0.3,
                                    width: width * 0.3,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        image: DecorationImage(
                                            image: FileImage(file!),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(
                                            width * 0.03)),
                                  ),
                            Positioned(
                              top: width * 0.23,
                              left: width * 0.23,
                              child: Container(
                                height: width * 0.037,
                                width: width * 0.041,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.circular(width * 0.007)),
                                child: SvgPicture.asset(
                                  Imagepage.profilecamera,
                                  width: width * 0.04,
                                ),
                              ),
                            )
                          ],
                        )),
                    Positioned(
                      top: width * 0.55,
                      left: width * 0.9,
                      child: Container(
                        height: width * 0.045,
                        width: width * 0.055,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(width * 0.007)),
                        child: SvgPicture.asset(
                          Imagepage.profilecamera,
                          width: width * 0.04,
                        ),
                      ),
                    ),
                    Positioned(
                      top: width * 0.77,
                      left: width * 0.34,
                      child: Text(
                        "Sanjay Shendy",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: width * 0.1,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            colorpage.primarycolor,
                            colorpage.secondarycolor
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      borderRadius: BorderRadius.circular(width * 0.02)),
                  child: Center(
                    child: Text(
                      "Add to story",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Choose a file from ?"),
                          actions: [
                            InkWell(
                              onTap: () {
                                pickimage(ImageSource.camera);
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: width * 0.07,
                                width: width * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                    gradient: LinearGradient(
                                        colors: [
                                          colorpage.primarycolor,
                                          colorpage.secondarycolor
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight)),
                                child: Icon(
                                  Icons.camera_alt_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                pickimage(ImageSource.gallery);
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: width * 0.07,
                                width: width * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                    gradient: LinearGradient(
                                        colors: [
                                          colorpage.primarycolor,
                                          colorpage.secondarycolor
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight)),
                                child: Icon(
                                  Icons.photo,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: width * 0.1,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(width * 0.02)),
                    child: Center(
                      child: Text(
                        "Edit profile",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SvgPicture.asset(
                  Imagepage.threedots,
                  color: Colors.black,
                  width: width * 0.015,
                )
              ],
            ),
            SizedBox(
              height: width * 0.04,
            ),
            Row(
              children: [
                Container(
                  height: width * 0.11,
                  width: width * 0.65,
                  // color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(Imagepage.lockicon),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You locked your profile",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Learn more",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: width * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GradientText(" Posts", colors: [
                      colorpage.primarycolor,
                      colorpage.secondarycolor
                    ]),
                    GradientText("1972", colors: [
                      colorpage.primarycolor,
                      colorpage.secondarycolor
                    ]),
                  ],
                ),
                Column(
                  children: [
                    GradientText("Friends", colors: [
                      colorpage.primarycolor,
                      colorpage.secondarycolor
                    ]),
                    GradientText("4843", colors: [
                      colorpage.primarycolor,
                      colorpage.secondarycolor
                    ])
                  ],
                ),
                Column(
                  children: [
                    GradientText("Followers", colors: [
                      colorpage.primarycolor,
                      colorpage.secondarycolor
                    ]),
                    GradientText("1990", colors: [
                      colorpage.primarycolor,
                      colorpage.secondarycolor
                    ])
                  ],
                ),
                Column(
                  children: [
                    GradientText("Following", colors: [
                      colorpage.primarycolor,
                      colorpage.secondarycolor
                    ]),
                    GradientText("1456", colors: [
                      colorpage.primarycolor,
                      colorpage.secondarycolor
                    ]),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: width * 0.07,
            ),
            Container(
              height: width * 0.65,
              width: width * 0.92,
              // color: Colors.blue,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          Imagepage.bag,
                          width: width * 0.07,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text("Founder and CEO at A to Z company Ltd.")
                      ],
                    ),
                    SizedBox(
                      height: width * 0.03,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          Imagepage.cap,
                          width: width * 0.07,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text("Studied Computer Science at \n"
                            "Harvard University")
                      ],
                    ),
                    SizedBox(
                      height: width * 0.03,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          Imagepage.home,
                          width: width * 0.07,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text("Lives in Mumbai, Maharastra")
                      ],
                    ),
                    SizedBox(
                      height: width * 0.03,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          Imagepage.location,
                          width: width * 0.07,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text("From Mumbai, India.")
                      ],
                    ),
                    SizedBox(
                      height: width * 0.03,
                    ),
                    a == false
                        ? Row(
                            children: [
                              SvgPicture.asset(
                                Imagepage.threedotsicon,
                                width: width * 0.05,
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text("See your about info.")
                            ],
                          )
                        : Container(
                            height: width * 0.3,
                            width: width * 0.92,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: width * 0.03,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      Imagepage.bag,
                                      width: width * 0.07,
                                    ),
                                    SizedBox(
                                      width: width * 0.03,
                                    ),
                                    Text(
                                        "Founder and CEO at A to Z company Ltd.")
                                  ],
                                ),
                                SizedBox(
                                  height: width * 0.03,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      Imagepage.cap,
                                      width: width * 0.07,
                                    ),
                                    SizedBox(
                                      width: width * 0.03,
                                    ),
                                    Text("Studied Computer Science at \n"
                                        "Harvard University")
                                  ],
                                ),
                              ],
                            ),
                          )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: width * 0.09,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Center(
                      child: Text(
                    "Edit public details",
                    style: TextStyle(fontSize: width * 0.03),
                  )),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: width * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "1478 friends posted on your timeline for your birthday",
                  style: TextStyle(fontSize: width * 0.03),
                ),
                SvgPicture.asset(
                  Imagepage.threedotsicon,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: width * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                a == false
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            a = true;
                          });
                        },
                        child: Container(
                          height: width * 0.09,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    colorpage.primarycolor,
                                    colorpage.secondarycolor
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius:
                                  BorderRadius.circular(width * 0.03)),
                          child: Center(
                            child: Text(
                              "See All",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          setState(() {
                            a = false;
                          });
                        },
                        child: Container(
                          height: width * 0.09,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    colorpage.primarycolor,
                                    colorpage.secondarycolor
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius:
                                  BorderRadius.circular(width * 0.03)),
                          child: Center(
                            child: Text(
                              "See less",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
              ],
            ),
            Divider(
              color: Colors.grey,
              height: width * 0.09,
            ),
            Container(
                height: height * 1.1,
                width: width * 1,
                // color: Colors.blue,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Image.asset(A[index]["image"]),
                            title: Text(A[index]["text"]),
                            subtitle: Row(
                              children: [
                                Text(A[index]["text1"]),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                SvgPicture.asset(A[index]["image1"]),
                              ],
                            ),
                            trailing: SvgPicture.asset(
                              A[index]["image2"],
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                A[index]["text2"],
                                style: TextStyle(fontSize: width * 0.03),
                              )
                            ],
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                          Image.asset(A[index]["image3"]),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.04),
                            child: Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (like.contains(index)) {
                                          like.remove(index);
                                        } else {
                                          like.add(index);
                                        }
                                      });
                                    },
                                    child: like.contains(index)
                                        ? SvgPicture.asset(Imagepage.bluelike)
                                        : SvgPicture.asset(Imagepage.like)),
                                SizedBox(
                                  width: width * 0.03,
                                ),
                                SvgPicture.asset(Imagepage.messageicon),
                                SizedBox(
                                  width: width * 0.03,
                                ),
                                SvgPicture.asset(Imagepage.subsract),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: width * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.02,),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Image.asset(Imagepage.likelike,
                                        width: width * 0.04),
                                    SvgPicture.asset(
                                      Imagepage.redheart,
                                      width: width * 0.04,
                                    ),
                                    Text(A[index]["text3"]),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right:width*0.03),
                                child: Text(A[index]["text4"]),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            height: width * 0.07,
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox();
                    },
                    itemCount: A.length))
          ],
        ),
      ),
    );
  }
}
