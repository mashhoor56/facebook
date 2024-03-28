import 'package:facebook/Join_facebook.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/forget_password.dart';
import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {

  TextEditingController namecontroller = TextEditingController();
  TextEditingController namecontroller1 = TextEditingController();
  
  final emailvalidation=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final passwordvalidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final formkey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Container(
                  height: height*0.9,
                  // color: Colors.redAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: width * 0.9,
                            width: width * 1,
                            // color: Colors.yellow,
                            child: Image(
                                image: AssetImage(Imagepage.loginscreen1),
                                fit: BoxFit.fill),
                          ),
                          Positioned(
                              top: width * 0.02,
                              left: width * 0.02,
                              child: SvgPicture.asset(Imagepage.loginscreenicon)),
                          Positioned(
                            top: width * 0.55,
                            left: width * 0.1,
                            child: TextFormField(
                              controller: namecontroller,
                              decoration: InputDecoration(
                                  labelText: "Phone or Email",
                                  labelStyle: TextStyle(color: Colors.grey.shade500),
                                suffixIcon: InkWell(
                                    onTap: () {
                                      namecontroller.text="";
                                      setState(() {

                                      });
                                    },
                                    child: Icon(Icons.clear,color: Colors.grey.shade500,)),
                                  constraints: BoxConstraints(maxWidth: width * 0.8),
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey.shade500)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey.shade500))),
                              keyboardType: TextInputType.text,
                              cursorColor: Colors.black,
                            ),
                          ),
                          Positioned(
                            top: width * 0.7,
                            left: width * 0.1,
                            child: TextFormField(
                              controller: namecontroller1,
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(color: Colors.grey.shade500),
                                suffixIcon: InkWell(
                                     onTap: () {
                                       namecontroller1.text="";
                                       setState(() {

                                       });
                                     },
                                    child: Icon(Icons.clear,color: Colors.grey.shade500,)),
                                  constraints: BoxConstraints(maxWidth: width * 0.8),
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey.shade500)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey.shade500))),
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor: Colors.black,
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              if(
                              formkey.currentState!.validate()
                              ) {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ForgetPassword(),));
                              }else{
                                namecontroller.toString() == "" ? ScaffoldMessenger.of(
                                    context).showSnackBar(SnackBar(content: Text(
                                    "please enter your email"))) :
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text("enter your valid Password")));
                              }
                            },
                            child: Container(
                              height: width * 0.12,
                              width: width * 0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width * 0.05),
                                gradient: LinearGradient(
                                    colors: [colorpage.primarycolor, colorpage.secondarycolor],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
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
                        ],
                      ),
                      Container(
                        height: width * 0.23,
                        // color: Colors.yellow,
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
                      InkWell(onTap: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => joinfacebook(),), (route) => false);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
