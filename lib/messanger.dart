import 'package:facebook/Newmessage.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/imagepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class Messanger extends StatefulWidget {
  const Messanger({super.key});
  @override
  State<Messanger> createState() => _MessangerState();
}

class _MessangerState extends State<Messanger> {

  bool cont=false;

  get doNothing=> null;

  List A=[
    {
      "image":Imagepage.vishpatil,
      "Text":"   Vish\n"
      "   Patil",
      "image1":Imagepage.greenNotificatin

    },
    {
      "image":Imagepage.rakashshetty,
      "Text":"VRakesh\n"
      "Shetty",
      "image1":Imagepage.greenNotificatin

    },
    {
      "image":Imagepage.kiran,
      "Text":"Kiran\n"
      "Pawar",
      "image1":Imagepage.greenNotificatin

    },
    {
      "image":Imagepage.rockyparker,
      "Text":"Rocky\n"
      "Parker",
      "image1":Imagepage.greenNotificatin

    },
    {
      "image":Imagepage.karencastillo,
      "Text":"Karen\n"
      "Castillo",
      "image1":Imagepage.greenNotificatin

    },
  ];
  List B=[
    {
      "image":Imagepage.rockyparker,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Rocky Parker",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.kiran,
      "text":"You: Yes, Thanks!!   06:00 AM",
      "text1":"Kiran Pawar",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.maisy,
      "text":"You: See you soon.   Sat",
      "text1":"Maisy Hupheri",
      "image1":Imagepage.graytick
    },
    {
      "image":Imagepage.anandi,
      "text":"Have a good day.   Fri",
      "text1":"Anandi kande",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.karencastillo,
      "text":"You: Ok, see you in Tor..   Thu",
      "text1":"Karen Castillo",
      "image1":Imagepage.graytick
    },
    {
      "image":Imagepage.kiranpawar,
      "text":"The business plan loo..   Thu",
      "text1":"Kiran Pawar",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.rockyparker,
      "text":"You: Okay Thanks!!",
      "text1":"Rocky Parker",
      "image1":Imagepage.graytick
    },
    {
      "image":Imagepage.kiran,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Kiran Pawar",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.maisy,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Maisy Hupheri",
      "image1":Imagepage.graytick
    },
    {
      "image":Imagepage.anandi,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Anandi kande",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.karencastillo,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Karen Castillo",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.kiranpawar,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Kiran Pawar",
      "image1":Imagepage.graytick
    },
    {
      "image":Imagepage.rockyparker,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Rocky Parker",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.kiran,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Kiran Pawar",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.maisy,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Maisy Hupheri",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.anandi,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Anandi kande",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.karencastillo,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Karen Castillo",
      "image1":Imagepage.bluetick
    },
    {
      "image":Imagepage.kiranpawar,
      "text":"You: Okay fine.  08:36 AM",
      "text1":"Kiran Pawar",
      "image1":Imagepage.bluetick
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white12,
          leading:Padding(
            padding:  EdgeInsets.only(top: width*0.05,left:width*0.04 ),
            child: Image.asset(Imagepage.profile),
          ),
          title: Padding(
            padding:  EdgeInsets.only(top: width*0.05),
            child: Text("Chats",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black
            ),),
          ),
          actions: [

            Padding(
              padding:  EdgeInsets.only(top: width*0.05),
              child: SvgPicture.asset(Imagepage.cameraicon,),
            ),
            SizedBox(width: width*0.03,),
            Padding(
              padding:  EdgeInsets.only(top: width*0.05,right: width*0.04),
              child: SvgPicture.asset(Imagepage.penicon,),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: width*0.05,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewMessage(),));
                    },
                      child: Container(
                        height: width*0.1,
                        width: width*0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),
                        child: Row(
                          children: [
                            SizedBox(width: width*0.02,),
                            SvgPicture.asset(Imagepage.searchicon,color: Colors.grey.shade500,),
                            SizedBox(width: width*0.01,),
                            Text("Search",
                            style: TextStyle(
                              color: Colors.grey.shade500
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: width*0.1,
                      width: width*0.3,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),
                      child: Center(
                        child: Text("Unread",
                        style: TextStyle(
                          color: Colors.grey.shade500
                        ),),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.03),
                child: Row(
                  children: [
                  Container(
                    height: width*0.31,
                  width: width*0.23,
                    // color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: width*0.02,),
                        Container(
                          height: width*0.2,
                            width: width*0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.035),
                              color: Colors.grey.shade200,
                            ),
                            child: SvgPicture.asset(Imagepage.frame)),
                        Center(
                          child: Text("  Create\n"
                              "video call",
                            style: TextStyle(fontSize: width*0.03),),
                        ),
                      ],
                    ),
                ),

                    Padding(
                      padding:  EdgeInsets.only(top: width*0.04),
                      child: Container(
                        height: width*0.3,
                        width: width*0.7,

                        // color: Colors.blue,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder:(context, index) {
                             return Column(
                               children: [
                                 Stack(
                                   children: [
                                     Container(
                                       height: width*0.3,
                                       width: width*0.215,
                                       // color: Colors.green,
                                       child: Column(
                                         children: [
                                           Container(
                                             height: width*0.2,
                                             width: width*0.2,
                                             // color: Colors.red,
                                             child: Image.asset(A[index]["image"]),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Positioned(
                                         top: width*0.17,
                                         left: width*0.18,
                                         child: SvgPicture.asset(A[index]["image1"])),
                                     Positioned(
                                       top: width*0.21,
                                         left: width*0.06,
                                         child: Text(A[index]["Text"],
                                         style: TextStyle(
                                           fontSize: width*0.03
                                         ),))
                                   ],
                                 ),
                               ],
                             );
                            } ,
                            separatorBuilder:  (context, index) {
                              return SizedBox(
                                width: width*0.02,
                              );
                            },
                            itemCount: A.length),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height*1.8,
                width: width*1,
                // color: Colors.blue,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                        Slidable(
                          key: UniqueKey(),
                          startActionPane: ActionPane(
                              motion: ScrollMotion(),
                              dismissible: DismissiblePane(onDismissed: () {}),
                              children: [
                                SlidableAction(
                                  borderRadius: BorderRadius.circular(width*0.09),


                                  onPressed: doNothing,
                                  backgroundColor:colorpage.secondarycolor,
                                  foregroundColor:Colors.white,
                                  icon: Icons.camera_alt_outlined,

                                ),
                                SlidableAction(
                                  borderRadius: BorderRadius.circular(width*0.09),
                                  onPressed: doNothing,
                                  backgroundColor: Colors.white,
                                  foregroundColor:Colors.black,
                                  icon: Icons.call,

                                ),
                                SlidableAction(
                                  borderRadius: BorderRadius.circular(width*0.09),
                                  onPressed: doNothing,
                                  backgroundColor:Colors.white,
                                  foregroundColor: Colors.black,
                                  icon: Icons.videocam,

                                ),
                              ]),
                          endActionPane: ActionPane(
                              motion: ScrollMotion(),
                              dismissible: DismissiblePane(onDismissed: () {}),
                              children: [
                                SlidableAction(
                                  borderRadius: BorderRadius.circular(width*0.09),


                                  onPressed: doNothing,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  icon:Icons.list_outlined,

                                ),
                                SlidableAction(
                                  borderRadius: BorderRadius.circular(width*0.09),
                                  onPressed: doNothing,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  icon: CupertinoIcons.bell,

                                ),
                                SlidableAction(
                                  borderRadius: BorderRadius.circular(width*0.09),
                                  onPressed: doNothing,
                                  backgroundColor: Colors.redAccent,
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete,

                                ),
                              ]),
                          child: Container(
                            height: width*0.20,
                            width: width*1,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                                width: width*0.001
                              )
                            ),
                            child: ListTile(
                              leading:Image.asset(B[index]["image"]),
                              title: Text(B[index]["text1"]),
                              subtitle: Text(B[index]["text"]),
                              trailing: SvgPicture.asset(B[index]["image1"]),
                            ),
                          ),
                        )  
                        ],
                      );
                    }, 
                    separatorBuilder:(context, index) {
                     return SizedBox(); 
                    } , 
                    itemCount:B.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
