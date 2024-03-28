import 'package:facebook/Forget_email.dart';
import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  TextEditingController namecontroller=TextEditingController();

  final phonevalidation=RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text("Find Your Account",
        style: TextStyle(color: Colors.black,
        fontSize: width*0.04),),
        leading: InkWell(onTap:() {
          Navigator.pop(context);
        } ,
          child: Icon(Icons.arrow_back_ios,
          color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
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
                                  child: Text("Enter your phone number",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: width*0.05
                                  ),)
                              ),
                              TextFormField(
                                controller: namecontroller,
                                validator: (value) {
                                  if(
                                  phonevalidation.hasMatch(value!)){
                                    return null;
                                  }else{
                                    return "pls enter phone number";
                                  }
                                },
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  prefixText:"91+",
                                    constraints: BoxConstraints(maxWidth: width*0.8),
                                    labelText: "Enter your phone number",
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
                                keyboardType: TextInputType.number,
                                cursorColor: Colors.black,
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: ()
                            {
                              if(
                              namecontroller.toString()!=""&&
                                  formkey.currentState!.validate()
                              ) {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ForgetEmail(),));
                              }else{
                                namecontroller.toString() == "" ? ScaffoldMessenger.of(
                                    context).showSnackBar(SnackBar(content: Text(
                                    "please enter your mobile number"))) :
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
