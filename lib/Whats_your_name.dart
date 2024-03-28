import 'package:facebook/Whats_your_birthday.dart';
import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class whatsyourname extends StatefulWidget {
  const whatsyourname({super.key});

  @override
  State<whatsyourname> createState() => _whatsyournameState();
}

class _whatsyournameState extends State<whatsyourname> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController namecontroller1 = TextEditingController();
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
            "Create account",
            style: TextStyle(color: Colors.black,
            fontSize: width*0.04),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: width * 0.80,
              width: width * 1,
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Center(
                          child: Text(
                        "What’s your name?",
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w700),
                      )),
                      Center(
                          child: Text(
                        "Enter the name you use in real life.",
                        style: TextStyle(
                            fontSize: width * 0.03,
                            color: Colors.grey.shade400),
                      )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                      left: 15,
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: namecontroller,
                            decoration: InputDecoration(
                              constraints: BoxConstraints(
                                maxWidth: width * 0.9,
                                minWidth: width * 0.9,
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  namecontroller.text = "";
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.clear,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              labelText: "First name",
                              labelStyle: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                            ),
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.words,
                            textInputAction: TextInputAction.next,
                            cursorColor: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: namecontroller1,
                            decoration: InputDecoration(
                              labelText: "Last name",
                              labelStyle: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  namecontroller1.text = "";
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.clear,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                            ),
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.words,
                            textInputAction: TextInputAction.next,
                            cursorColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: width * 0.12,
                    width: width * 0.8,
                    // color: Colors.redAccent,
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
                    child: InkWell(
                      onTap: () {
                        if (namecontroller.text.isNotEmpty &&
                            namecontroller1.text.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => YourBirthday(),
                              ));
                        } else {
                          namecontroller.text.isEmpty
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("Please enter the name")))
                              : ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("Please enter the last name")));
                        }

                        setState(() {});
                      },
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
