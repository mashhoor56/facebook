import 'package:facebook/Genter.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';

class YourBirthday extends StatefulWidget {
  const YourBirthday({super.key});

  @override
  State<YourBirthday> createState() => _YourBirthdayState();
}

class _YourBirthdayState extends State<YourBirthday> {
  DateTime? _selectedDate;
  int age=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Birthday",
          style: TextStyle(color: Colors.black,
          fontSize: width*0.04),
        ),
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
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.7,
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Center(
                          child: Text(
                        "What’s your birthday?",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: width * 0.06),
                      )),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Text(
                        "Choose your date of birth.",
                        style: TextStyle(fontSize: width * 0.035,
                        color: Colors.grey.shade500),

                      ),
                      SizedBox(
                        height: width * 0.01,
                      ),
                      Text(
                        "You can always make this private later.",
                        style: TextStyle(fontSize: width * 0.035,
                        color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: width * 0.70,
                        child: DatePickerWidget(

                          looping: false, // default is not looping
                          firstDate: DateTime(1990, 1, 1),
                          lastDate: DateTime.now(),
                          initialDate: DateTime.now(), // DateTime(1994),
                          dateFormat:
                              // "MM-dd(E)",
                              "dd/MMMM/yyyy",
                          locale: DatePicker.localeFromString('en'),
                          onChange: (DateTime newDate, _) {
                            age=DateTime.now().difference(newDate).inDays~/365;
                            setState(() {
                              _selectedDate = newDate;
                            });
                            print(_selectedDate);
                          },
                          pickerTheme: const DateTimePickerTheme(
                            backgroundColor: Colors.white24,
                            itemTextStyle:
                                TextStyle(color: Colors.black, fontSize: 19),
                            dividerColor: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "$age Years old",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Genter(),
                          ));
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
          ],
        ),
      ),
    );
  }
}
