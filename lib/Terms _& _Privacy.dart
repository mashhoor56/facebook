import 'package:facebook/Home_Screen1.dart';
import 'package:facebook/Home_Screen2.dart';
import 'package:facebook/Home_Screen3.dart';
import 'package:facebook/Login_screen1.dart';
import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Termsprivacy extends StatefulWidget {
  const Termsprivacy({super.key});

  @override
  State<Termsprivacy> createState() => _TermsprivacyState();
}

class _TermsprivacyState extends State<Termsprivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,

            ),
          ),
        ),
        title: Text(
          "Terms & Privacy",
          style: TextStyle(color: Colors.black, fontSize: width*0.04),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: width*0.1,),
                Text("Finishing signing up",
                  style:TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: width*0.05
                  ) ,),
                Text("By tapping Sign up, you agree to our "),
                SizedBox(height: width*0.01,),
                RichText(
                    text: TextSpan(
                       children: [
                         TextSpan(
                           text: "Terms, Data Policy",
                           style: TextStyle(color: Colors.blue)
                         ),
                         TextSpan(
                           text: " and ",
                           style: TextStyle(
                             color: Colors.grey.shade500
                           )
                         ),
                         TextSpan(
                             text: "Cookies Policy",
                           style: TextStyle(color: Colors.blue)
                         )
                       ]
                    )
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // if(password.text.isNotEmpty) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen1(),
                          ));
                    // }else{
                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your password")));
                    // }
                  },
                  child: Container(
                    height: width * 0.12,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.05),
                        gradient: LinearGradient(
                            colors: [
                            colorpage.primarycolor,
                              colorpage.secondarycolor
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                    child: Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                SizedBox(height: width*0.05,),
                Text("Sign up without updating my contact",
                style: TextStyle(color: Colors.blue,fontSize: width*0.03),),
              ],
            ),
            Text("The Facebook company is now Meta. While our company name \n"
                " is changing, we are continuing to offer the same products, \n"
                " including the Facebook app from Meta. Our Data Policy and \n"
                " Terms of Service remain in effect, and this name change does \n"
                " not affect how we use or share data. Learn more about Meta and \n"
                " our vision for the metaverse.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: width*0.026),)
          ],
        ),
      ),
    );
  }
}
