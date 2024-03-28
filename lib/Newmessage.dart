import 'package:facebook/MessangerChat.dart';
import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {


  List A=[
    {
      "image":Imagepage.rockyparker,
      "text":"Rocky Parker",
      "page":Messanger_Chat()
    },
    {
      "image":Imagepage.kiran,
      "text":"Kiran Pawar",
      "page":Messanger_Chat()
    },
    {
      "image":Imagepage.maisy,
      "text":"Maisy Hupheri",
      "page":Messanger_Chat()
    },
    {
      "image":Imagepage.anandi,
      "text":"Anandi kande",
      "page":Messanger_Chat()
    },
    {
      "image":Imagepage.karencastillo,
      "text":"Karen Castillo",
      "page":Messanger_Chat()
    },
    {
      "image":Imagepage.rockyparker,
      "text":"Rocky Parker",
      "page":Messanger_Chat()
    },
    {
      "image":Imagepage.rockyparker,
      "text":"Rocky Parker",
      "page":Messanger_Chat()
    },
    {
      "image":Imagepage.kiran,
      "text":"Kiran Pawar",
      "page":Messanger_Chat()
    },
    {
      "image":Imagepage.maisy,
      "text":"Maisy Hupheri",
      "page":Messanger_Chat()
    },
    {
      "image":Imagepage.anandi,
      "text":"Anandi kande",
      "page":Messanger_Chat()
    },
  ];
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          elevation: 0,
        backgroundColor: Colors.white12,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "New message",
          style: TextStyle(color: Colors.black),
        ),
          actions: [
            CupertinoSwitch(
              // This bool value toggles the switch.
              value: switchValue,
              activeColor: CupertinoColors.activeBlue,
              onChanged: (bool? value) {
                // This is called when the user toggles the switch.
                setState(() {
                  switchValue = value ?? false;
                });
              },
            ),
          ],
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: "  Type a name or group",
                  hintStyle: TextStyle(
                    fontSize: width*0.035,
                    color: Colors.grey.shade500
                  ),
                  prefixText: "   To:",
                  prefixStyle: TextStyle(
                    color: Colors.grey.shade500
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              Container(
                height: width*0.3,
                 // color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: width*0.04,
                        ),
                        SvgPicture.asset(Imagepage.twoperson),
                        SizedBox(
                          width: width*0.04,
                        ),
                        Text("Create a new group",
                            style: TextStyle(
                                color: Colors.blue
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width*0.03,
                        ),
                        SvgPicture.asset(Imagepage.frame,width: width*0.09,),
                        SizedBox(
                          width: width*0.025,
                        ),
                        Text("Create a new video call",
                        style: TextStyle(
                          color: Colors.blue
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  SizedBox(width: width*0.04,),
                  Text("Suggested",
                  style: TextStyle(color: Colors.grey.shade500)),
                ],
              ),
              Container(
                height: height*1,
                // color: Colors.blue,
                child:ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                    itemBuilder:(context, index) {
                      return Column(
                        children: [
                          SizedBox(height: width*0.03,),
                          InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => A[index]["page"],));
                            setState(() {

                            });
                          },
                            child: ListTile(
                              leading: Image.asset(A[index]["image"]),
                              title: Text(A[index]["text"]),
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox();
                    },
                    itemCount: A.length) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
