
import 'package:facebook/_navigation_chat.dart';
import 'package:facebook/Home_Screen1.dart';
import 'package:facebook/Join_facebook.dart';
import 'package:facebook/Login_screen1.dart';
import 'package:facebook/Profile_login.dart';
import 'package:facebook/Splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

///add hi
///
///
/// add hello
///
test(){
 // 'hello world'
}

var width;
var height;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    print("main page");
    return GestureDetector(
      onTap:  () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

        ),
        home:splashscreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


