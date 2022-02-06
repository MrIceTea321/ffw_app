import 'package:ffw_app/constants/buttons/standard_button.dart';
import 'package:ffw_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [darkBlue, lightBlue, darkBlue])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        SizedBox(
        height: size.height * 0.35,
          child: Image.asset('images/ffwlogo.png'),
        ),
         Text('Wähle aus was du üben möchtest:', style: TextStyle(
             fontSize: size.height * 0.035, color: red, fontWeight: FontWeight.bold)),
            StandardButton(color: red, text: 'modulare Truppmannausbildung', onPressed: (){

            })
        ],
      )),
    );
  }
}
