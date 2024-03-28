import 'package:facebook/Home_Screen1.dart';
import 'package:facebook/Home_Screen2.dart';
import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {

  TextEditingController namecontroller=TextEditingController();
  final passwordvalidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final formkey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Reset your password",
          style: TextStyle(color: Colors.black,
          fontSize: width*0.04),
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
          key: formkey,
          child: Column(
            children: [
              Container(
                height: width*0.3,
                width: width*1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("Create new password",
                    style: TextStyle(fontWeight: FontWeight.w700),)),
                  ],
                ),
              ),
              Container(
                height: width * 0.15,
                width: width * 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("You will use this password to access your account.",
                    style: TextStyle(fontSize: width*0.03,
                    color: Colors.grey.shade500),),
                    Text("Enter a combination of at least six numbers, letters",
                      style: TextStyle(fontSize: width*0.03,
                          color: Colors.grey.shade500),),
                    Text(" and punctuation marks.", style: TextStyle(fontSize: width*0.03,
                        color: Colors.grey.shade500),),
                  ],
                ),
              ),
              Container(
                height: width*0.6,
                width: width*1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      validator: (value) {
                        if(passwordvalidation.hasMatch(value!)){
                          return null;
                        }else{
                          return "Password must contain \n1 capital(A-Z)\n1 small(a-z)\n1 Number(0-9)\n1 Special characterPassword must contain ";
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: namecontroller,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(onTap:() {
                          namecontroller.text="";
                          setState(() {

                          });
                        } ,
                          child: Icon(Icons.clear,
                            color: Colors.grey.shade500,),
                        ),
                         labelText: "Create New Password",
                        labelStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),constraints: BoxConstraints(maxWidth: width*0.8),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: width*0.005,
                            color: Colors.blue,),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: width*0.005,
                              color: Colors.blue)
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: Colors.black,
                      obscureText: true,
                    ),
                    InkWell(onTap: ()
                    {
                      if(
                      namecontroller.toString()!=""&&
                          formkey.currentState!.validate()
                      ) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomeScreen1(),));
                      }else{
                        namecontroller.toString() == "" ? ScaffoldMessenger.of(
                            context).showSnackBar(SnackBar(content: Text(
                            "please enter your email"))) :
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("enter your valid details")));
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
                              "Log in",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
