import 'package:ffw_app/constants/buttons/standard_button.dart';
import 'package:ffw_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ModulareTruppAusbildung extends StatefulWidget {
  const ModulareTruppAusbildung({Key? key}) : super(key: key);

  @override
  _ModulareTruppAusbildung createState() => _ModulareTruppAusbildung();
}

class _ModulareTruppAusbildung extends State<ModulareTruppAusbildung> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: shaderDecoration,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.2,
            child: Image.asset('images/ffwlogo.png'),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Center(
            child: Text('Wähle aus welches Themengebiet du üben möchtest:',
                style: TextStyle(
                    fontSize: size.height * 0.025,
                    color: white,
                    )),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          StandardButton(
              text: 'Alle Fragen',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Rechtsgrundlagen',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Alternative Antriebstechniken',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Brennen und Löschen',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Einsatzhygiene',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Fahrzeugkunde',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Funk',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Gefahren an der Einsatzstelle',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Gefahren beim Einsatz',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Gerätekunde',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Hilfeleistungs- und Löscheinsatz',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Physische- und Psychische Belastung',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Rettung von Personen',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Sichern und Absichern',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          StandardButton(
              text: 'Technische Hilfeleistung',
              color: buttonColor,
              onPressed: () {
                //Navigator.pushNamed(context, 'Rechtsgrundlagen');
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
        ],
      ),
    ));
  }
}
