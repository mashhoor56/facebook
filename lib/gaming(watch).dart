import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Gaming extends StatefulWidget {
  const Gaming({super.key});

  @override
  State<Gaming> createState() => _GamingState();
}

class _GamingState extends State<Gaming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Gaming", style: TextStyle(fontSize: width*0.1),)),
    );
  }
}
