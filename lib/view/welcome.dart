import 'dart:html';

import 'package:ffw_app/constants/buttons/standard_button.dart';
import 'package:ffw_app/constants/colors.dart';
import 'package:ffw_app/constants/custom_widgets/alert_with_function.dart';
import 'package:ffw_app/view/modulare_truppausbildung/modulare_truppausbildung.dart';
import 'package:ffw_app/view/pdfView.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      maintainBottomViewPadding: true,
      top: false,
      child: Container(
        decoration: shaderDecoration,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
            children: [
              SizedBox(
                height: size.height * 0.4,
                child: Image.asset('images/ffwlogo.png'),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text('Was möchtest du üben 💡',
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
                  text: 'Truppausbildung 👩‍🚒 ‍👨‍🚒',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertWithFunction(
                            title: 'Achtung',
                            text:
                                'Um die App richtig nutzen zu können, halte dein Smartphone bitte immer Hochkant ☺️',
                            buttonText: 'zur Ausbildung',
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          ModulareTruppAusbildung()));
                            });
                      },
                    );
                  }),
              SizedBox(
                height: size.height * 0.09,
              ),
              StandardButton(
                  color: buttonColor,
                  text: 'Teilnehmerunterlagen Basismodul 👩‍🚒 ‍👨‍🚒',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertWithFunction(
                            title: 'Achtung',
                            text:
                                'Um die App richtig nutzen zu können, halte dein Smartphone bitte immer Hochkant ☺️',
                            buttonText: 'zur Ausbildung',
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const PdfLabPage()));
                            });
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
