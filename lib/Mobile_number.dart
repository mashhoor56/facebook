import 'package:facebook/Password.dart';
import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({super.key});

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  TextEditingController number=TextEditingController();

  final formKey = GlobalKey<FormState>();
  final phonevalidation=RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

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
          "Mobile number",
          style: TextStyle(color: Colors.black, fontSize: width*0.04),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key:formKey ,
          child: Column(
            children: [
              Container(
                height: height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Text(
                            "Enter your mobile number",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: width * 0.05),
                          )),
                          SizedBox(
                            height: width * 0.001,
                          ),
                          Text(
                            "Enter the mobile number where you can be reached. ",
                            style: TextStyle(
                                fontSize: width * 0.03,
                                color: Colors.grey.shade500),
                          ),
                          Text(
                            "No one else will see this on your profile",
                            style: TextStyle(
                                fontSize: width * 0.03,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: number,
                      validator: (value) {
                        if(
                        phonevalidation.hasMatch(value!)){
                          return null;
                        }else{
                          return "pls enter valid number";
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      // maxLength: 10,
                      decoration: InputDecoration(
                          constraints: BoxConstraints(maxWidth: width * 0.8),
                          prefixText: "91+",
                          labelText: "Mobile number",
                          labelStyle: TextStyle(color: Colors.grey.shade500),
                          suffixIcon: InkWell(onTap: () {
                            number.text="";
                            setState(() {

                            });
                          },
                              child: Icon(Icons.clear,
                              color: Colors.grey.shade500,)),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                    InkWell(
                      onTap: (){
                      if(
                      number.toString()!=""&&
                          formKey.currentState!.validate()
                      ) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Password(),));
                      }else{
                        number.toString() == "" ? ScaffoldMessenger.of(
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
                          "Next",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    )
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
