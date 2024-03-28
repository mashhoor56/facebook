import 'package:facebook/Create_New_Password.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class OTPVarification extends StatefulWidget {
  const OTPVarification({super.key});

  @override
  State<OTPVarification> createState() => _OTPVarificationState();
}

class _OTPVarificationState extends State<OTPVarification> {
  TextEditingController namecontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
bool a=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Find Your Account",
          style: TextStyle(color: Colors.black, fontSize: width * 0.04),
        ),
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
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.only(
                top: width * 0.1, left: width * 0.08, right: width * 0.08),
            child: Column(
              children: [
                Container(
                  // color: Colors.blue,
                  height: width * 0.2,
                  width: width * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(child: Text("Enter the code we sent to")),
                      Text(
                        "Sanjayshendy123@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Text(
                        "We sent 6 digit code to your email address.",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: width * 0.03),
                      ),
                    ],
                  ),
                ),
                PinCodeFields(
                  controller: namecontroller,
                  length: 6,
                  activeBorderColor: Colors.blue,
                  borderColor: Colors.blue,
                  keyboardType: TextInputType.number,
                  onComplete: (output) {
                    if (output.length == 6) {
                   a=true;
                    } else {
                    a=false;
                    }
                    setState(() {

                    });
                  },
                ),
                InkWell(
                  onTap: () {
                      if (namecontroller.text.length<6) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("enter your valid OTP")));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateNewPassword(),
                            ));
                      }
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
                            end: Alignment.centerRight),
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ),
                Container(
                  height: width * 0.3,
                  width: width * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(Imagepage.Icon3),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            "Send email again",
                            style: TextStyle(fontSize: width * 0.035),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Imagepage.Icon4),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            "Get code via SMS",
                            style: TextStyle(fontSize: width * 0.035),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
