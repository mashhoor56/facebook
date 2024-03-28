import 'package:facebook/OTPvarification.dart';
import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ForgetEmail extends StatefulWidget {
  const ForgetEmail({super.key});

  @override
  State<ForgetEmail> createState() => _ForgetEmailState();
}

class _ForgetEmailState extends State<ForgetEmail> {

  TextEditingController namecontroller=TextEditingController();

  final emailvalidation=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text("Find Your Account",
          style: TextStyle(color: Colors.black,
          fontSize: width*0.04),),
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },
          child: Icon(Icons.arrow_back_ios,
            color: Colors.black,),
        ),
      ),
      body:  SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                height: height*0.8,
                // color: Colors.redAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: width*0.7,
                      // color: Colors.yellow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Column(
                            children: [
                              Center(
                                  child: Text("Enter your email address",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: width*0.05
                                    ),)
                              ),
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
                                    constraints: BoxConstraints(maxWidth: width*0.8),
                                    labelText: "Enter your Email ID",
                                    labelStyle: TextStyle(
                                        color: Colors.grey.shade500
                                    ),
                                    suffixIcon: InkWell(onTap:() {
                                      namecontroller.text="";
                                      setState(() {

                                      });
                                    } ,
                                      child: Icon(Icons.clear,
                                        color: Colors.grey.shade500,),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color:Colors.grey.shade500
                                        )
                                    )
                                ),
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: Colors.black,
                              ),
                            ],
                          ),
                          InkWell( onTap: ()
                          {
                            if(
                            namecontroller.toString()!=""&&
                                formKey.currentState!.validate()
                            ) {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => OTPVarification(),));
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
                                    "Find Your Account",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),

                        ],
                      ),
                    ),
                    Text("Search by email insted",
                      style:  TextStyle(
                          color: Colors.blue
                      ),)
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
