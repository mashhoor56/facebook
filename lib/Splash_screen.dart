import 'package:facebook/colorpage.dart';
import 'package:facebook/imagepage.dart';
import 'package:facebook/Profile_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'main.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3))
        .then((value) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => profilelogin(),
            ),
            (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: width * 0.60,
            ),
            Center(
                child: Image(
              image: AssetImage(Imagepage.logo1),
            )),
            GradientText(
            "facebook",
                style: TextStyle(
                  fontSize: width*0.07,
                  fontWeight: FontWeight.w700
                ),
                colors:[
                  colorpage.primarycolor,
                  colorpage.secondarycolor
                ],
            ),
            SizedBox(
              height: width * 0.5,
            ),
            Column(
              children: [
                Text("From"),
                SizedBox(
                  height: width * 0.03,
                ),
                Image(image: AssetImage(Imagepage.meta)),
                SizedBox(
                  height: width * 0.09,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
