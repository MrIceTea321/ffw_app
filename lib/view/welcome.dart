import 'package:ffw_app/constants/buttons/standard_button.dart';
import 'package:ffw_app/constants/colors.dart';
import 'package:ffw_app/view/modulare_truppausbildung/modulare_truppausbildung.dart';
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
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        decoration: shaderDecoration,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              SizedBox(
                height: size.height * 0.35,
                child: Image.asset('images/ffwlogo.png'),
              ),
              Text('Was möchtest du üben?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.height * 0.035,
                    color: Colors.black,
                  )),
              SizedBox(
                height: size.height * 0.15,
              ),
              StandardButton(
                  color: buttonColor,
                  text: 'Truppausbildung',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ModulareTruppAusbildung()));
                  }),
            ],
          ),
        ));
  }
}
