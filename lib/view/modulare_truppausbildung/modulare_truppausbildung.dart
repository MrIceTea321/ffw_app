import 'dart:math';
import 'package:ffw_app/constants/buttons/standard_button.dart';
import 'package:ffw_app/constants/colors.dart';
import 'package:ffw_app/view/quiz.dart';
import 'package:flutter/material.dart';
import '../../constants/custom_widgets/alert_with_function.dart';
import 'fragen_truppmann/brennen_und_loeschen.dart';
import 'fragen_truppmann/alternative_antriebstechniken_bei_autos.dart';
import 'fragen_truppmann/loescheinsatz.dart';
import 'fragen_truppmann/rechtsgrundlagen.dart';
import 'fragen_truppmann/einsatzhygiene.dart';
import 'fragen_truppmann/fahrzeugkunde.dart';
import 'fragen_truppmann/funk.dart';
import 'fragen_truppmann/gefahren_an_der_einsatzstelle.dart';
import 'fragen_truppmann/gefahren_beim_einsatz.dart';
import 'fragen_truppmann/geratekunde.dart';
import 'fragen_truppmann/hilfeleistungs_loescheinsatz.dart';
import 'fragen_truppmann/physische_und_psychische_belastung.dart';
import 'fragen_truppmann/sichern_und_absichern.dart';
import 'fragen_truppmann/technische_hilfeleistung.dart';
import 'fragen_truppmann/rettung_von_personen.dart';

class ModulareTruppAusbildung extends StatefulWidget {
  ModulareTruppAusbildung({Key? key}) : super(key: key);
  List<Map<String, Object>> examQuestions = [];
  List<Map<String, Object>> allQuestions = [];

  @override
  _ModulareTruppAusbildung createState() => _ModulareTruppAusbildung();
}

class _ModulareTruppAusbildung extends State<ModulareTruppAusbildung> {
  @override
  void initState() {
    addAllQuestions();
    widget.examQuestions.addAll(getExamQuestions());
    super.initState();
  }

  @override
  void dispose() {
    widget.examQuestions.clear();
    widget.allQuestions.clear();
    super.dispose();
  }

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
            Text('Wähle ein Themengebiet aus 🔎',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: size.height * 0.03,
                  color: Colors.black,
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            StandardButton(
                text: '🚒 Prüfungsmodus 🚒',
                color: buttonColor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertWithFunction(
                          title: 'Achtung',
                          text: 'Im Prüfungsmodus erwarten dich 50 zufällige Fragen aus allen Themenbereichen. Viel Spaß ☺️',
                          buttonText: 'zur Prüfung',
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Quiz(
                                      questions: widget.examQuestions,
                                      themengebiet: 'Prüfung',
                                    )));
                          });
                    },
                  );

                }),
            SizedBox(
              height: size.height * 0.02,
            ),
            StandardButton(
                text: 'Alle Fragen',
                color: buttonColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => Quiz(
                                questions: widget.allQuestions,
                                themengebiet: 'Alle Fragen',
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
                text: 'Hilfeleistung- Löscheinsatz',
                color: buttonColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => Quiz(
                                questions: HilfeleistungsLoescheinsatz
                                    .fragenHilfeleistungsLoescheinsatz,
                                themengebiet:
                                    HilfeleistungsLoescheinsatz.themengebiet,
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
                              themengebiet: BrennenUndLoeschen.themengebiet)));
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
                              questions:
                                  GefahrenBeimEinsatz.fragenGefahrenBeimEinsatz,
                              themengebiet: GefahrenBeimEinsatz.themengebiet)));
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
                              themengebiet:
                                  Physische_PsychischeBelastung.themengebiet)));
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
                              themengebiet: RettungVonPersonen.themengebiet)));
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
                              questions:
                                  SichernUndAbsichern.fragenSichernUndAbsichern,
                              themengebiet: SichernUndAbsichern.themengebiet)));
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
      ),
    );
  }

  List<Map<String, Object>> getExamQuestions() {
    List<Map<String, Object>> examQuestionsList = [];
    for (int i = 0; i < 50; i++) {
      int random = Random().nextInt(199);
      examQuestionsList.insert(i, widget.allQuestions.elementAt(random));
    }
    return examQuestionsList;
  }

  void addAllQuestions() {
    widget.allQuestions.addAll(AlternativeAntriebstechnikenBeiAutos
        .fragenalternativeAntriebstechnikenBeiAutos);
    widget.allQuestions.addAll(BrennenUndLoeschen.fragenBrennenUndLoeschen);
    widget.allQuestions.addAll(Einsatzhygiene.fragenEinsatzhygiene);
    widget.allQuestions.addAll(Fahrzeugkunde.fragenFahrzeugkunde);
    widget.allQuestions.addAll(Funk.fragenFunk);
    widget.allQuestions
        .addAll(GefahrenAnDerEinsatzstelle.fragenGefahrenAnDerEinsatzstelle);
    widget.allQuestions.addAll(GefahrenBeimEinsatz.fragenGefahrenBeimEinsatz);
    widget.allQuestions.addAll(Geraetekunde.fragenGeraetekunde);
    widget.allQuestions
        .addAll(HilfeleistungsLoescheinsatz.fragenHilfeleistungsLoescheinsatz);
    widget.allQuestions.addAll(Loescheinsatz.fragenLoescheinsatz);
    widget.allQuestions.addAll(
        Physische_PsychischeBelastung.fragenPhysische_PsychischeBelastung);
    widget.allQuestions.addAll(RettungVonPersonen.fragenRettungVonPersonen);
    widget.allQuestions.addAll(SichernUndAbsichern.fragenSichernUndAbsichern);
    widget.allQuestions.addAll(THL.fragenTHL);
  }
}
