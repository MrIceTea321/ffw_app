import 'package:ffw_app/constants/buttons/standard_button.dart';
import 'package:ffw_app/constants/colors.dart';
import 'package:ffw_app/fragen_truppmann/alternative_antriebstechniken_bei_autos.dart';
import 'package:ffw_app/fragen_truppmann/brennen_und_loeschen.dart';
import 'package:ffw_app/fragen_truppmann/einsatzhygiene.dart';
import 'package:ffw_app/fragen_truppmann/fahrzeugkunde.dart';
import 'package:ffw_app/fragen_truppmann/funk.dart';
import 'package:ffw_app/fragen_truppmann/gefahren_an_der_einsatzstelle.dart';
import 'package:ffw_app/fragen_truppmann/gefahren_beim_einsatz.dart';
import 'package:ffw_app/fragen_truppmann/geratekunde.dart';
import 'package:ffw_app/fragen_truppmann/loescheinsatz.dart';
import 'package:ffw_app/fragen_truppmann/physische_und_psychische_belastung.dart';
import 'package:ffw_app/fragen_truppmann/rechtsgrundlagen.dart';
import 'package:ffw_app/fragen_truppmann/rettung_von_personen.dart';
import 'package:ffw_app/fragen_truppmann/sichern_und_absichern.dart';
import 'package:ffw_app/fragen_truppmann/technische_hilfeleistung.dart';
import 'package:ffw_app/view/quiz.dart';
import 'package:flutter/material.dart';

import '../fragen_truppmann/alle_fragen.dart';

class ModulareTruppAusbildung extends StatefulWidget {
  const ModulareTruppAusbildung({Key? key}) : super(key: key);

  @override
  _ModulareTruppAusbildung createState() => _ModulareTruppAusbildung();
}

class _ModulareTruppAusbildung extends State<ModulareTruppAusbildung> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
        color: lightBlue,
        child: Container(
          height: size.height,
          width: size.width,
          decoration: shaderDecoration,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Center(
                child: SizedBox(
                  height: size.height * 0.35,
                  child: Image.asset('images/ffwlogo.png'),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text('Wähle aus welches Themengebiet du üben möchtest:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.height * 0.03,
                    color: white,
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),
              StandardButton(
                  text: 'Alle Fragen',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                  questions: AlleFragen.fragenPruefungsmodus,
                                  themengebiet: AlleFragen.themengebiet,
                                )));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Rechtsgrundlagen',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                  questions:
                                      Rechtsgrundlagen.fragenRechtsgrundlagen,
                                  themengebiet: Rechtsgrundlagen.themengebiet,
                                )));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Alternative Antriebstechniken',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                  questions: AlternativeAntriebstechnikenBeiAutos
                                      .fragenalternativeAntriebstechnikenBeiAutos,
                                  themengebiet:
                                      AlternativeAntriebstechnikenBeiAutos
                                          .themengebiet,
                                )));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Brennen und Löschen',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions:
                                    BrennenUndLoeschen.fragenBrennenUndLoeschen,
                                themengebiet:
                                    BrennenUndLoeschen.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Einsatzhygiene',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: Einsatzhygiene.fragenEinsatzhygiene,
                                themengebiet: Einsatzhygiene.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Fahrzeugkunde',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: Fahrzeugkunde.fragenFahrzeugkunde,
                                themengebiet: Fahrzeugkunde.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Funk',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: Funk.fragenFunk,
                                themengebiet: Funk.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Gefahren Einsatzstelle',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: GefahrenAnDerEinsatzstelle
                                    .fragenGefahrenAnDerEinsatzstelle,
                                themengebiet:
                                    GefahrenAnDerEinsatzstelle.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Gefahren Einsatz',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: GefahrenBeimEinsatz
                                    .fragenGefahrenBeimEinsatz,
                                themengebiet:
                                    GefahrenBeimEinsatz.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Gerätekunde',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: Geraetekunde.fragenGeraetekunde,
                                themengebiet: Geraetekunde.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Löscheinsatz',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: Loescheinsatz.fragenLoescheinsatz,
                                themengebiet: Loescheinsatz.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Menschliche Belastung',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: Physische_PsychischeBelastung
                                    .fragenPhysische_PsychischeBelastung,
                                themengebiet: Physische_PsychischeBelastung
                                    .themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Rettung von Personen',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions:
                                    RettungVonPersonen.fragenRettungVonPersonen,
                                themengebiet:
                                    RettungVonPersonen.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Sichern und Absichern',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: SichernUndAbsichern
                                    .fragenSichernUndAbsichern,
                                themengebiet:
                                    SichernUndAbsichern.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              StandardButton(
                  text: 'Technische Hilfeleistung',
                  color: buttonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Quiz(
                                questions: THL.fragenTHL,
                                themengebiet: THL.themengebiet)));
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
            ],
          ),
        ));
  }
}