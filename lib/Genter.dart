import 'package:facebook/Mobile_number.dart';
import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Genter extends StatefulWidget {
  const Genter({super.key});

  @override
  State<Genter> createState() => _GenterState();
}

class _GenterState extends State<Genter> {
  String? genter;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Gender",
          style: TextStyle(color: Colors.black,
              fontSize: width*0.04),
        ),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(child: Icon(Icons.arrow_back_ios, color: Colors.black)),
        ),
      ),
      body: Container(
        height: height * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(

              children: [
                Center(
                  child: Text(
                    "What,s your gender",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: width * 0.06),
                  ),
                ),
                SizedBox(height: width*0.02,),
                Text(
                  "You can change who sees your gennder on your profile later.",
                  style: TextStyle(
                      fontSize: width * 0.027, color: Colors.grey.shade500),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: width * 0.1,
                  width: width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Female"),
                      Radio(
                        fillColor: MaterialStatePropertyAll(Colors.blue),
                        value: "F",
                        groupValue: genter,
                        onChanged: (value) {
                          genter = value!;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  indent: width * 0.10,
                  endIndent: width * 0.10,
                  color: Colors.black,
                ),
                Container(
                  height: width * 0.1,
                  width: width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Male"),
                      Radio(
                        fillColor: MaterialStatePropertyAll(Colors.blue),
                        value: "M",
                        groupValue: genter,
                        onChanged: (value) {
                          genter = value!;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  indent: width * 0.10,
                  endIndent: width * 0.10,
                  color: Colors.black,
                ),
                Container(
                  height: width * 0.1,
                  width: width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Custom"),
                      Radio(
                        fillColor: MaterialStatePropertyAll(Colors.blue),
                        value: "c",
                        groupValue: genter,
                        onChanged: (value) {
                          genter = value!;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width*0.8,
                      child: Text(
                        textAlign: TextAlign.left,
                        "Select custome to choose another gender,\nor if you’d rather not say",
                        style: TextStyle(fontSize: width * 0.03,color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Divider(
                  indent: width * 0.10,
                  endIndent: width * 0.10,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: width*0.05,),
            InkWell(
              onTap: () {
                if(genter!=null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MobileNumber(),
                      ));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Select Genter")));
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
    );
  }
}
