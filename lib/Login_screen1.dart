import 'package:facebook/Join_facebook.dart';
import 'package:facebook/Login_screen2.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/forget_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'imagepage.dart';
import 'main.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {

  bool a = true;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController namecontroller1 = TextEditingController();

  final emailvalidation=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final passwordvalidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: width * 0.85,
                      width: width * 1,
                      // color: Colors.yellow,
                      child: Image(
                          image: AssetImage(Imagepage.loginscreen1),
                          fit: BoxFit.fill),
                    ),
                    Positioned(
                        left: width * 0.02,
                        top: width * 0.02,
                        child: SvgPicture.asset(Imagepage.loginscreenicon)),
                    Positioned(
                      left: width * 0.45,
                      bottom: width * 0.15,
                      child: Container(
                          width: width * 0.15,
                          child: Image(image: AssetImage(Imagepage.logo2))),
                    )
                  ],
                ),
                Container(
                  height: width * 0.53,
                  width: width * 0.8,
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                         if( emailvalidation.hasMatch(value!)){
                           return null;
                         }else{
                           return "pls enter valid email";
                         }
                        },
                        controller: namecontroller,
                        decoration: InputDecoration(
                          constraints: BoxConstraints(maxWidth: width * 0.8),
                          border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade500)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          suffixIcon: InkWell(
                              onTap: () {
                                namecontroller.text = "";
                                setState(() {});
                              },
                              child: Icon(
                                Icons.clear,
                                color: Colors.grey.shade500,
                              )),
                          labelText: "Phone or Email",
                          labelStyle: TextStyle(color: Colors.grey.shade500),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.black,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: namecontroller1,
                        obscureText: a,
                        validator: (value) {
                          if(passwordvalidation.hasMatch(value!)){
                            return null;
                          }else{
                            return "pls enter valid password";
                          }
                        },
                        decoration: InputDecoration(
                            constraints: BoxConstraints(maxWidth: width * 0.8),
                            suffixIcon: InkWell(
                                onTap: () {
                                  a = !a;
                                  setState(() {});
                                },
                                child: Icon(
                                  a
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility,
                                )),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.grey.shade500),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500))),
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(
                    formkey.currentState!.validate()
                    ) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ForgetPassword(),));
                    }else{
                      namecontroller1.toString() == "" ? ScaffoldMessenger.of(
                          context).showSnackBar(SnackBar(content: Text(
                          "please enter your email"))) :
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("enter your valid Details")));
                    }
                  },
                  child: Container(
                    height: width * 0.12,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.05),
                      gradient: LinearGradient(colors: [
                        colorpage.primarycolor,
                        colorpage.secondarycolor
                      ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    ),
                    child: Center(
                        child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: width * 0.04,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.blue),
                ),
                Container(
                  height: width * 0.23,
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        indent: width * 0.1,
                        endIndent: width * 0.02,
                        color: Colors.grey.shade400,
                      )),
                      Text(
                        "OR",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      Expanded(
                          child: Divider(
                        indent: width * 0.02,
                        endIndent: width * 0.1,
                        color: Colors.grey.shade400,
                      ))
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => joinfacebook(),
                        ),
                        (route) => false);
                  },
                  child: Container(
                    height: width * 0.08,
                    width: width * 0.6,
                    decoration: BoxDecoration(
                        // color: Colors.blue,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(width * 0.03)),
                    child: Center(
                      child: Text(
                        "Create new Facebook account",
                        style: TextStyle(fontSize: width * 0.03),
                      ),
                    ),
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
