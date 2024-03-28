import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:facebook/HomeScreen4.dart';
import 'package:facebook/HomeScreen5.dart';
import 'package:facebook/Home_Screen2.dart';
import 'package:facebook/Home_Screen3.dart';
import 'package:facebook/Home_Screen6.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'imagepage.dart';
import 'main.dart';

class Homescreen2 extends StatefulWidget {
  const Homescreen2({super.key});

  @override
  State<Homescreen2> createState() => _Homescreen2State();
}

class _Homescreen2State extends State<Homescreen2> {

  List <int>like=[];

  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;

  List image = [
    {
      "images": Imagepage.maskgroup,
      "images1": Imagepage.add,
      "text": ""
    },
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
  List B = [
    {
      "list": Imagepage.deven1,
      "textA": "Deven mestry is with Mahesh\n" "Joshi.",
      "textB": "1 h .  Mumbai, Maharastra .",
      "list1": Imagepage.group2,
      "list2": Imagepage.threedots,
      "textC": "Old is Gold..!!❤️😍",
      "list3": Imagepage.loveicon,
      "list4": Imagepage.smilingface,
      "list5": Imagepage.car,
      "list6": Imagepage.like,
      "list7": Imagepage.messageicon,
      "list8": Imagepage.subsract,
      "textD": "Liked by Sachin Kamble and 155 others ",
      "list9": Imagepage.likelike,
      "list10": Imagepage.heart,
      "textE": "4 Comments",
      "list11":Imagepage.amir,
      "textF":"Amir Shenoy\nBeautiful place.🤩",
      "list12":Imagepage.anushree,
      "textG":"Anushree Swapnil Satam\nAwesome",
      "textH":"1 h    Like    Reply",
      "list13":Imagepage.profilephoto,
    },
    {
      "list": Imagepage.tejas,
      "textA": "Tejas Phopale updated his profile \n photo",
      "textB": "2 h . Delhi . ",
      "textC":"",
      "list1": Imagepage.earth,
      "list2": Imagepage.threedots,
      "list3": Imagepage.emojies,
      "list5": Imagepage.post1,
      "textD": "You, Rakesh Shetty and 130 others",
      "list9": Imagepage.likelike,
      "list10": Imagepage.heart,
      "textE": "41 Comments",
      "list11":Imagepage.amir,
      "textF":"Amir Shenoy\nBeautiful place.🤩",
      "list12":Imagepage.anushree,
      "textG":"Anushree Swapnil Satam\nAwesome",
      "textH":"1 h    Like    Reply",
      "list13":Imagepage.profilephoto,
    },
    {
      "list": Imagepage.mask1,
      "textA": "Brooklyn Simmons is in Dubai",
      "textB": "1 d. ",
      "textC":"",
      "list1": Imagepage.earth,
      "list2": Imagepage.threedots,
      "list5": Imagepage.brooklyn,
      "list6": Imagepage.like,
      "list7": Imagepage.messageicon,
      "list8": Imagepage.subsract,
      "textD": "You, Anin Kale and 205 others ",
      "list9": Imagepage.likelike,
      "list10": Imagepage.heart,
      "textE": "14 Comments",
      "list11":Imagepage.amir,
      "textF":"Amir Shenoy\nBeautiful place.🤩",
      "list12":Imagepage.anushree,
      "textG":"Anushree Swapnil Satam\nAwesome",
      "textH":"1 h    Like    Reply",
      "list13":Imagepage.profilephoto,
    },
    {
      "list": Imagepage.jairaj,
      "textA": "Chetan Jairaj",
      "textB":"6 h .  Pune, Maharastra .",
      "list1": "",
      "list2": Imagepage.threedots,
      "textC": "Home coming❤️",
      "list5": Imagepage.jairaj1,
      "list6": Imagepage.like,
      "list7": Imagepage.messageicon,
      "list8": Imagepage.subsract,
      "textD": "Liked by Sachin Kamble and 155 others ",
      "list9": Imagepage.likelike,
      "list10": Imagepage.heart,
      "textE": "20 Comments",
      "list11":Imagepage.amir,
      "textF":"Amir Shenoy\nBeautiful place.🤩",
      "list12":Imagepage.anushree,
      "textG":"Anushree Swapnil Satam\nAwesome",
      "textH":"1 h    Like    Reply",
      "list13":Imagepage.profilephoto,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: width*0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.18,
                      width: width * 0.18,
                      child: Image.asset(Imagepage.profilephoto),
                      decoration: BoxDecoration(
                          // color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                    ),
                    Container(
                      height: width * 0.1,
                      width: width * 0.6,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: "What’s on your mind, Sanjay?",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: width * 0.03),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(12),
                              child: SvgPicture.asset(Imagepage.groupimage),
                            ),
                            suffixStyle: TextStyle(fontSize: width * 0.01),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width * 0.03),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade200)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200),
                                borderRadius: BorderRadius.circular(width * 0.03)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200),
                                borderRadius: BorderRadius.circular(width * 0.03))),
                      ),
                    ),
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
              Padding(
                padding:  EdgeInsets.only(left: width*0.02,
                top: width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.11,
                      width: width * 0.23,
                      decoration: BoxDecoration(
                          color: colorpage.lightyellow,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(Imagepage.reels),
                          Text(
                            "Reels",
                            style: TextStyle(color: colorpage.yellow),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: width * 0.11,
                      width: width * 0.23,
                      decoration: BoxDecoration(
                          color: colorpage.lightgreen,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(Imagepage.room),
                          Text(
                            "Room",
                            style: TextStyle(
                              color: colorpage.green,
                              fontSize: width * 0.035,
                              // fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: width * 0.11,
                      width: width * 0.23,
                      decoration: BoxDecoration(
                          color: colorpage.lightred,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(Imagepage.contactred),
                          Text(
                            "Group",
                            style: TextStyle(
                                fontSize: width * 0.035, color: colorpage.red),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: width * 0.11,
                      width: width * 0.23,
                      decoration: BoxDecoration(
                          color: colorpage.lightblue,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(Imagepage.live),
                          Text(
                            "Live",
                            style: TextStyle(color: colorpage.blue),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.02,
                    top: width*0.02),
                child: Container(
                  height: width * 0.53,
                  width: width * 1,
                  // color: colorpage.green,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: width * 0.46,
                                width: width * 0.3,
                                // color: Colors.red,
                                child: Column(
                                  children: [
                                    Container(
                                      height: width * 0.4,
                                      width: width * 0.35,
                                      decoration: BoxDecoration(
                                          // color: Colors.yellow,
                                          borderRadius:
                                              BorderRadius.circular(width * 0.06)),
                                      child: Image.asset(
                                        image[index]["images"],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                // bottom: width*0.1,
                                left: width * 0.095,
                                top: width * 0.35,
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage(image[index]["images1"]),
                                ),
                              ),
                            ],
                          ),
                          Text(image[index]["text"]),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: width * 0.03,
                      );
                    },
                    itemCount: image.length,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                height: height * 3.3,
                width: width * 1,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                              leading: Image.asset(B[index]["list"]),
                              title: Text(
                                B[index]["textA"],
                                style: TextStyle(fontSize: width * 0.035),
                              ),
                              subtitle: Row(
                                children: [
                                  Text(B[index]["textB"]),
                                  SvgPicture.asset(B[index]["list1"]),
                                  // SvgPicture.asset(B[index]["list2"]),
                                ],
                              ),

                              trailing: SvgPicture.asset(B[index]["list2"]),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: width*0.04,),
                            child: Row(
                              children: [
                                Text(B[index]["textC"]),
                              ],
                            ),
                          ),
                          Container(
                            height: width * 0.7,
                            width: width * 1,
                            // color: Colors.pink,
                            child: Image.asset(
                              B[index]["list5"],
                              // fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: width*0.04),
                            child: Row(
                              children: [
                                InkWell(onTap: () {
                                  setState(() {
                                    if(like.contains(index)){
                                      like.remove(index);
                                    }else{
                                      like.add(index);
                                    }
                                  });
                                },
                                    child: like.contains(index)
                                   ? SvgPicture.asset(Imagepage.bluelike):
                                        SvgPicture.asset(Imagepage.like)
                                ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                // mainAxisAlignment:
                                // MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Image.asset(B[index]["list9"],
                                      width: width * 0.04),
                                  SvgPicture.asset(
                                    Imagepage.redheart,
                                    width: width * 0.04,
                                  ),
                                ],
                              ),
                              Text(
                                B[index]["textD"],
                                style: TextStyle(
                                  fontSize: width * 0.03,
                                ),
                              ),
                              Text(
                                B[index]["textE"],
                                style: TextStyle(fontSize: width * 0.03),
                              ),
                              SizedBox(),

                            ],
                          ),
                      Padding(
                        padding:  EdgeInsets.only(left: width*0.04),
                        child: Row(
                children: [
                  Container(
                        height: width*0.13,
                        width: width*0.13,
                        child: Image.asset(B[index]["list11"])),
                  SizedBox(width: width*.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                          height: width*0.14,
                          width: width*0.4,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(width*0.04)
                          ),
                          child: Center(
                            child: Text(
                              B[index]["textF"]
                            ),
                          ),
                        ),
                        Text(B[index]["textH"],
                            style: TextStyle(color: Colors.grey.shade600))

                    ],
                  )
                ],
              ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: width*0.04),
                        child: Row(
                children: [
                  Container(
                        height: width*0.13,
                        width: width*0.13,
                        child: Image.asset(B[index]["list12"])),
                  SizedBox(width: width*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                          height: width*0.14,
                          width: width*0.6,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(width*0.04)
                          ),
                          child: Center(
                            child: Text(
                              B[index]["textG"]
                            ),
                          ),
                        ),
                        Text(B[index]["textH"],
                          style: TextStyle(color: Colors.grey.shade600),)
                    ],
                  ),
                ],
              ),
                      ),
                          Padding(
                            padding:  EdgeInsets.only(left: width*0.02,),
                            child: Row(
                              children: [
                                Container(
                                  height: width*0.1,
                                  width: width*0.15,
                                  // color: Colors.blue,
                                  child: Image.asset(Imagepage.profilephoto),
                                ),
                                Container(
                                  height:width* 0.1,
                                  width: width * 0.75,
                                  // color: Colors.blue,
                                  child: TextFormField(
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey.shade200,
                                        filled: true,
                                        hintText: "Write a comment..",
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.03),
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.asset(Imagepage.camera1),
                                              SizedBox(width: width*0.01,),
                                              Image.asset(Imagepage.smileicon)
                                            ],
                                          ),
                                        ),
                                        suffixStyle: TextStyle(fontSize: width * 0.01),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(width * 0.03),
                                            borderSide:
                                            BorderSide(color: Colors.grey.shade200)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey.shade200),
                                            borderRadius: BorderRadius.circular(width * 0.03)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey.shade200),
                                            borderRadius: BorderRadius.circular(width * 0.03))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox();
                    },
                    itemCount: B.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Container(
//   height: height * 2,
//   width: width * 1,
//   // color: colorpage.green,
//   child: ListView.separated(
//
//       physics: NeverScrollableScrollPhysics(),
//       itemBuilder: (context, index) {
//         return Column(
//           children: [
//             Container(
//               height: height * 0.51,
//               width: width * 1,
//               // color: Colors.yellow,
//               child: Container(
//                 height: width * 0.8,
//                 width: width * 1,
//                 // color: Colors.yellow,
//                 child: Column(
//                   children: [
//                     ListTile(
//                         leading: Image.asset(B[index]["list"]),
//                         title: Text(
//                           B[index]["textA"],
//                           style:
//                               TextStyle(fontSize: width * 0.035),
//                         ),
//                         subtitle: Row(
//                           children: [
//                             Text(B[index]["textB"]),
//                             SvgPicture.asset(B[index]["list1"]),
//                             // SvgPicture.asset(B[index]["list2"]),
//                           ],
//                         ),
//                         trailing:
//                             SvgPicture.asset(B[index]["list2"])),
//                     Row(
//                       children: [
//                         Text(B[index]["textC"]),
//                         Image.asset(B[index]["list3"],
//                             width: width * 0.04),
//                         Image.asset(B[index]["list4"],
//                             width: width * 0.04)
//                       ],
//                     ),
//                     Container(
//                       height: width * 0.6,
//                       width: width * 1,
//                       color: Colors.pink,
//                       child: Image.asset(
//                         B[index]["list5"],
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                     SizedBox(
//                       height: width * 0.02,
//                     ),
//                     Row(
//                       children: [
//                         SvgPicture.asset(Imagepage.like),
//                         SizedBox(
//                           width: width * 0.03,
//                         ),
//                         SvgPicture.asset(Imagepage.messageicon),
//                         SizedBox(
//                           width: width * 0.03,
//                         ),
//                         SvgPicture.asset(Imagepage.subsract),
//                       ],
//                     ),
//                     SizedBox(
//                       height: width * 0.03,
//                     ),
//                     Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Row(
//                           // mainAxisAlignment:
//                               // MainAxisAlignment.spaceEvenly,
//                           children: [
//                             SizedBox(width: width*0.02,),
//                             Image.asset(B[index]["list9"],
//                                 width: width * 0.04),
//                             SvgPicture.asset(
//                               Imagepage.redheart,
//                               width: width * 0.04,
//                             ),
//                           ],
//                         ),
//                         Text(
//                           B[index]["textD"],
//                           style: TextStyle(
//                             fontSize: width * 0.03,
//                           ),
//                         ),
//                         Text(
//                           B[index]["textE"],
//                           style:
//                               TextStyle(fontSize: width * 0.03),
//                         ),
//                         SizedBox(),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Divider(
//             //   color: Colors.grey,
//             // ),
//             // Container(
//             //   height: height * 0.51,
//             //   width: width * 1,
//             //   // color: Colors.yellow,
//             //   child: Column(
//             //     children: [
//             //       ListTile(
//             //         leading: Image.asset(C[index]["list"]),
//             //         title: Text(
//             //           C[index]["textA"],
//             //           style: TextStyle(fontSize: width * 0.035),
//             //         ),
//             //         subtitle: Row(
//             //           children: [
//             //             Text(C[index]["textB"]),
//             //             SvgPicture.asset(C[index]["list1"]),
//             //           ],
//             //         ),
//             //         trailing: SvgPicture.asset(B[index]["list2"]),
//             //       ),
//             //       Container(
//             //         height: width * 0.6,
//             //         width: width * 1,
//             //         color: Colors.white10,
//             //         child: Image.asset(C[index]["list3"]),
//             //       ),
//             //       Row(
//             //         children: [
//             //           Image.asset(
//             //             C[index]["list4"],
//             //             width: width * 0.4,
//             //           ),
//             //         ],
//             //       ),
//             //       SizedBox(
//             //         height: width * 0.03,
//             //       ),
//             //       Row(
//             //         mainAxisAlignment:
//             //             MainAxisAlignment.spaceEvenly,
//             //         children: [
//             //           Row(
//             //             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //             children: [
//             //               SizedBox(width: width*0.01,),
//             //               Image.asset(C[index]["list5"],
//             //                   width: width * 0.04),
//             //               SvgPicture.asset(
//             //                 Imagepage.redheart,
//             //                 width: width * 0.04,
//             //               ),
//             //             ],
//             //           ),
//             //           Text(
//             //             C[index]["textC"],
//             //             style: TextStyle(
//             //               fontSize: width * 0.03,
//             //             ),
//             //           ),
//             //           Text(
//             //             C[index]["textD"],
//             //             style: TextStyle(fontSize: width * 0.03),
//             //           ),
//             //           SizedBox(),
//             //         ],
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             // Divider(
//             //   color: Colors.grey,
//             // ),
//             // Container(
//             //   height: height * 0.49,
//             //   width: width * 1,
//             //   // color: Colors.yellow,
//             //   child: Column(
//             //     children: [
//             //       ListTile(
//             //         leading: Image.asset(D[index]["list"]),
//             //         title: Text(
//             //           D[index]["text"],
//             //           style: TextStyle(fontSize: width * 0.035),
//             //         ),
//             //         subtitle: Row(
//             //           children: [
//             //             Text(D[index]["text1"]),
//             //             SvgPicture.asset(D[index]["list2"])
//             //           ],
//             //         ),
//             //         trailing: SvgPicture.asset(D[index]["list1"]),
//             //       ),
//             //       Image.asset(D[index]["list3"]),
//             //       Row(
//             //         mainAxisAlignment: MainAxisAlignment.start,
//             //         children: [
//             //           SvgPicture.asset(D[index]["list4"]),
//             //           SizedBox(
//             //             width: width * 0.03,
//             //           ),
//             //           SvgPicture.asset(D[index]["list5"]),
//             //           SizedBox(
//             //             width: width * 0.03,
//             //           ),
//             //           SvgPicture.asset(D[index]["list6"]),
//             //           SizedBox(
//             //             width: width * 0.03,
//             //           ),
//             //         ],
//             //       ),
//             //       Row(
//             //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //         children: [
//             //           Row(
//             //             children: [
//             //               Image.asset(D[index]["list7"],
//             //                   width: width * 0.04),
//             //               SvgPicture.asset(
//             //                 Imagepage.redheart,
//             //                 width: width * 0.04,
//             //               ),
//             //               SizedBox(width: width*0.03,),
//             //               Text(D[index]["text2"],
//             //                 style:  TextStyle(
//             //                     fontSize: width * 0.03
//             //                 ),),
//             //             ],
//             //           ),
//             //
//             //           Text(D[index]["text3"],
//             //           style: TextStyle(
//             //               fontSize: width * 0.03
//             //           ),)
//             //         ],
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             // Row(
//             //   children: [
//             //     Container(
//             //         height: width*0.13,
//             //         width: width*0.13,
//             //         child: Image.asset(D[index]["list9"])),
//             //     SizedBox(width: width*.03,),
//             //     Column(
//             //       crossAxisAlignment: CrossAxisAlignment.start,
//             //       children: [
//             //         Container(
//             //           height: width*0.14,
//             //           width: width*0.4,
//             //           decoration: BoxDecoration(
//             //               color: Colors.grey.shade200,
//             //             borderRadius: BorderRadius.circular(width*0.04)
//             //           ),
//             //           child: Center(
//             //             child: Text(
//             //               D[index]["text4"]
//             //             ),
//             //           ),
//             //         ),
//             //         Text(D[index]["text6"],
//             //         style:  TextStyle(
//             //           color: Colors.grey.shade500
//             //         ),)
//             //       ],
//             //     )
//             //   ],
//             // ),
//             // Row(
//             //   children: [
//             //     Container(
//             //         height: width*0.13,
//             //         width: width*0.13,
//             //         child: Image.asset(D[index]["list11"])),
//             //     SizedBox(width: width*.03,),
//             //     Column(
//             //       crossAxisAlignment: CrossAxisAlignment.start,
//             //       children: [
//             //         Container(
//             //           height: width*0.14,
//             //           width: width*0.6,
//             //           decoration: BoxDecoration(
//             //               color: Colors.grey.shade200,
//             //             borderRadius: BorderRadius.circular(width*0.04)
//             //           ),
//             //           child: Center(
//             //             child: Text(
//             //               D[index]["text5"]
//             //             ),
//             //           ),
//             //         ),
//             //         Text(D[index]["text6"],
//             //           style:  TextStyle(
//             //               color: Colors.grey.shade500
//             //           ),)
//             //       ],
//             //     )
//             //   ],
//             // ),
//             // Row(
//             //   children: [
//             //     Container(
//             //       height: width*0.08,
//             //         width: width*0.08,
//             //         child: Image.asset(D[index]["list12"])),
//             //     // Row(
//             //     //   children: [
//             //     //     Container(
//             //     //       height: width*0.1,
//             //     //       width: width*0.8,
//             //     //       child:
//             //     //     ),
//             //     //   ],
//             //     // )
//             //   ],
//             // )
//           ],
//         );
//       },
//       separatorBuilder: (context, index) {
//         return SizedBox(
//           width: width * 0.03,
//         );
//       },
//       itemCount: B.length),
// )
