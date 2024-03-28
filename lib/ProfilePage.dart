import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Column(
        children: [
          Container(
            height: width*0.5,
            width: width*1,
            // color: Colors.yellow,
            child: CircleAvatar(
                backgroundColor: Colors.white12,
                child: Image.asset(Imagepage.maisy,width: width*0.3,)),
          ),
          Container(
            height: width*0.4,
            // color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Maisy Hupheri",style: TextStyle(fontSize: width*0.06,
                fontWeight: FontWeight.w700),),
                SizedBox(height: width*0.02,),
                Text("91+9876543210",style:
                  TextStyle(fontSize: width*0.04,fontWeight: FontWeight.w500),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.location_solid),
                    // SizedBox(width: width*0.01,),
                    Text("Paris",style: TextStyle(fontSize: width*0.04,fontWeight: FontWeight.w500),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Pin:",style: TextStyle(fontSize: width*0.04,fontWeight: FontWeight.w500),),
                    Text("0951734",style: TextStyle(fontSize: width*0.04,fontWeight: FontWeight.w500),)
                  ],
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}
