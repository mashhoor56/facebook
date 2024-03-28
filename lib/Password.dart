import 'package:facebook/Terms%20_&%20_Privacy.dart';
import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final formKey = GlobalKey<FormState>();
  final passwordValidation =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  TextEditingController passwordCondroler = TextEditingController();
  TextEditingController password = TextEditingController();
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
          "Password",
          style: TextStyle(color: Colors.black, fontSize: width * 0.04),
        ),
      ),
      body: Form(
        key: formKey,
        child: Container(
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
                      "Choose a password",
                      style: TextStyle(
                          fontSize: width * 0.05, fontWeight: FontWeight.w700),
                    )),
                    SizedBox(
                      height: 0.001,
                    ),
                    Text(
                      "Create a password at least with 6 chaeacters.",
                      style: TextStyle(
                          fontSize: width * 0.03, color: Colors.grey.shade500),
                    ),
                    Text(
                      "It should be something others couldn’t guess.",
                      style: TextStyle(
                          fontSize: width * 0.03, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
              TextFormField(
                controller: password,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (!passwordValidation.hasMatch(value!)) {
                    return "enter your valid password";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.grey.shade500),
                    constraints: BoxConstraints(maxWidth: width * 0.8),
                    suffixIcon: InkWell(
                      onTap: () {
                        password.text = "";
                      },
                      child: Icon(
                        Icons.clear,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
                keyboardType: TextInputType.text,
                cursorColor: Colors.black,
                obscureText: true,
              ),
              InkWell(
                onTap: (){
                  if(
                  password.toString()!=""&&
                      formKey.currentState!.validate()
                  ) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Termsprivacy(),));
                  }else{password.toString() == "" ? ScaffoldMessenger.of(
                        context).showSnackBar(SnackBar(content: Text(
                        "please enter your password"
                            ""))) :
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("enter your valid password")));
                  }
                },
                // onTap: () {
                //   if (password.text.isNotEmpty) {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => Termsprivacy(),
                //         ));
                //   } else {
                //     ScaffoldMessenger.of(context).showSnackBar(
                //         SnackBar(content: Text("Enter your password")));
                //   }
                // },
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
                    "Next",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
