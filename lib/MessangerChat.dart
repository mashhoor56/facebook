import 'package:facebook/ProfilePage.dart';
import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class Messanger_Chat extends StatefulWidget {
  const Messanger_Chat({super.key});

  @override
  State<Messanger_Chat> createState() => _Messanger_ChatState();
}

class _Messanger_ChatState extends State<Messanger_Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: width*0.7,
                width: width*1,
                // color: Colors.blue,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Imagepage.maisy,width: width*0.25,),
                    SizedBox(height: width*0.03,),
                    Text("Maisy Hupheri",
                    style: TextStyle(fontSize: width*0.06,
                    fontWeight: FontWeight.w700),)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(Imagepage.audio),
                      SizedBox(height: width*0.03,),
                      Text("Audio",style:
                      TextStyle(color: Colors.grey))
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(Imagepage.chatvideo),
                      SizedBox(height: width*0.05,),
                      Text("Video",style:
                      TextStyle(color: Colors.grey))
                    ],
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profilepage(),));
                  },
                    child: Column(
                      children: [
                        SvgPicture.asset(Imagepage.chatprofile),
                        SizedBox(height: width*0.04,),
                        Text("Profile",style:
                        TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(Imagepage.mute),
                      SizedBox(height: width*0.04,),
                      Text("Mute",style:
                        TextStyle(color: Colors.grey),)
                    ],
                  ),

                ],
              ),
              Divider(
                color: Colors.grey,
                height: width*0.06,
              ),
              Container(
                height: width*0.3,
                // color: Colors.blue,
                child: Padding(
                  padding:  EdgeInsets.only(left: width*0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text("Theme",style: TextStyle(fontSize: width*0.035),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Emoji",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Nickname",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Word effects",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: width*0.06,
              ),
              Container(
                height: width*0.4,
                // color: Colors.blue,
                child: Padding(
                  padding:  EdgeInsets.only(left: width*0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text("More Actions",
                          style: TextStyle(color: Colors.grey,
                          fontSize: width*0.03),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("View photos & videos",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Search in conversation",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Secret conversation",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Create group with Maisy",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: width*0.06,
              ),
              Container(
                height: width*0.4,
                // color: Colors.blue,
                child: Padding(
                  padding:  EdgeInsets.only(left: width*0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text("Privacy",
                            style: TextStyle(color: Colors.grey,
                                fontSize: width*0.03),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Notifications",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Block",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Report",style: TextStyle(fontSize: width*0.035)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
