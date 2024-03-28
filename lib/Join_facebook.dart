import 'package:facebook/Login_screen1.dart';
import 'package:facebook/Profile_login.dart';
import 'package:facebook/Whats_your_name.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class joinfacebook extends StatefulWidget {
  const joinfacebook({super.key});

  @override
  State<joinfacebook> createState() => _joinfacebookState();
}

class _joinfacebookState extends State<joinfacebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  // size: width * 0.08,
                ),
              )),
          title: Text(
            "Create account ",
            style: TextStyle(color: Colors.black,fontSize: width*0.04),
          ),
          backgroundColor: Colors.white,
          // actions: [
          //  InkWell(onTap: () {
          //    Navigator.pop(context);
          //  },
          //  )
          // ],
        ),
        body: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: width * 0.6,
                width: width * 1,
                // color: Colors.yellow,
                child: Image(
                  image: AssetImage(Imagepage.illustration),
                ),
              ),
              // SizedBox(height: width*0.2,),
              Column(
                children: [
                  Container(
                    height: width * 0.2,
                    width: width * 1,
                    // color: Colors.redAccent,
                    child: Center(
                        child: Text(
                      "Join Facebook",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: width * 0.05),
                    )),
                  ),
                  Text(
                    "We’ll help you ",
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  Text(
                    "create a new account in a few easy steps.",
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  SizedBox(height: width*0.05,),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => whatsyourname(),));
                    setState(() {

                    });
                  },
                    child: Container(
                      height: width*0.12,
                      width: width*0.8,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                          gradient:LinearGradient(
                              colors:[
                                colorpage.primarycolor,
                                colorpage.secondarycolor
                              ],
                              begin:Alignment.centerLeft,
                              end: Alignment.centerRight
                          ) ,
                          borderRadius: BorderRadius.circular(width*0.05)
                      ),
                      child: Center(
                        child: Text("Next",
                          style: TextStyle(
                              color: Colors.white
                          ),),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: width*0.05,),
              Container(
                height: width*0.1,
                width: width*1,
                // color: Colors.black,
                child: Center(child: Text("Already have an account?",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),)),
              )
            ],
          ),
        )
    );
  }
}
