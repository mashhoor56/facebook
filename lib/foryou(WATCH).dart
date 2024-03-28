import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'imagepage.dart';
import 'main.dart';

class Foryou extends StatefulWidget {
  const Foryou({super.key});

  @override
  State<Foryou> createState() => _ForyouState();
}

class _ForyouState extends State<Foryou> {
  List<int> like = [];

  List a = [
    {
      "image": Imagepage.whitebox,
      "text": "BasicHacker . ",
      "text1": "Follow",
      "text2": "10 h",
      "image1": Imagepage.threedotsicon,
      "image2": Imagepage.clearicon,
      "image3": Imagepage.freefire,
      "text3": "10K",
      "text4": "400 Comments . 270 Shares  "
    },
    {
      "image": Imagepage.whitebox,
      "text": "BasicHacker . ",
      "text1": "Follow",
      "text2": "10 h",
      "image1": Imagepage.threedotsicon,
      "image2": Imagepage.clearicon,
      "image3": Imagepage.freefire,
      "text3": "10K",
      "text4": "400 Comments . 270 Shares  "
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
            // height: height * 1.2,
            width: width*1,
            child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(a[index]["image"]),
                        title: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: a[index]["text"],
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: a[index]["text1"],
                                style: TextStyle(color: Colors.blue))
                          ]),
                        ),
                        subtitle: Text(a[index]["text2"]),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              a[index]["image1"],
                              color: Colors.black,
                            ),
                            Icon(Icons.clear)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.08),
                        child: Row(
                          children: [
                            Text("FREE FIRE LIVE"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.08),
                        child: Row(
                          children: [Text("... See more")],
                        ),
                      ),
                      Image.asset(a[index]["image3"]),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.05),
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
                        height: width * 0.02,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: width*0.03,right: width*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
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
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(a[index]["text3"]),
                              ],
                            ),
                            Text(a[index]["text4"])
                          ],
                        ),
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
                itemCount: a.length),
          )
        ],
      ),
    ));
  }
}
