import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/buttons/standard_button.dart';
import '../../constants/colors.dart';
import 'modulare_truppausbildung.dart';

class Quiz extends StatefulWidget {
  List<Map<String, Object>> questions;
  String themengebiet;

  Quiz({
    required this.questions,
    required this.themengebiet,
  });

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int questionIndex = 0;
  int questionIndexHelper = 1;
  int totalScore = 0;
  bool showAnswer = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: shaderDecoration,
        child: questionIndex < widget.questions.length
            ? Scaffold(
                body: !showAnswer
                    // question container
                    ? Container(
                        decoration: shaderDecoration,
                        child: Column(children: [
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [peach, lightPeach, white])),
                                  height: size.height * 0.3,
                                  width: size.width * 0.9,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10),
                                    child: Center(
                                      child: Text(
                                        widget.questions
                                            .elementAt(questionIndex)
                                            .values
                                            .elementAt(0)
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: size.height * 0.03,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          ...(widget.questions[questionIndex]['answers']
                                  as List<Map<String, Object>>)
                              .map((answers) {
                            return Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    margin: const EdgeInsets.all(5.0),
                                    child: StandardButton(
                                      onPressed: () {
                                        answerQuestions(int.parse(
                                            answers['score'].toString()));
                                        setState(() {
                                          showAnswer = true;
                                        });
                                      },
                                      color: lightBlue,
                                      text: answers['text'].toString(),
                                    ),
                                  ),
                                )
                              ],
                            );
                          }).toList(),
                        ]),
                      )
                    // answer container
                    : Container(
                        decoration: shaderDecoration,
                        child: Column(children: [
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [peach, lightPeach, white])),
                                  height: size.height * 0.3,
                                  width: size.width * 0.9,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10),
                                    child: Center(
                                      child: Text(
                                        widget.questions
                                            .elementAt(questionIndex - 1)
                                            .values
                                            .elementAt(0)
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: size.height * 0.03,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          ...(widget.questions[questionIndex - 1]['answers']
                                  as List<Map<String, Object>>)
                              .map((answers) {
                            return Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    margin: const EdgeInsets.all(5.0),
                                    child: StandardButton(
                                      onPressed: () {},
                                      color: int.parse(answers['score']
                                                  .toString()) ==
                                              1
                                          ? Colors.green
                                          : Colors.red,
                                      text: answers['text'].toString(),
                                    ),
                                  ),
                                )
                              ],
                            );
                          }).toList(),
                          const Spacer(),
                          StandardButton(
                              color: buttonColor,
                              text: 'Nächste Frage',
                              onPressed: () {
                                setState(() {
                                  showAnswer = false;
                                });
                              }),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                        ]),
                      ))
            : Scaffold(
                backgroundColor: Colors.transparent,
                body: ListView(
                  children: [
                    SizedBox(
                      height: size.height * 0.35,
                      child: Image.asset('images/ffwlogo.png'),
                    ),
                    totalScore != 0
                        ? Text(
                            '🎉 Herzlichen Glückwunsch! Du hast ' +
                                totalScore.toString() +
                                ' Fragen richtig beantwortet 🎉',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: size.height * 0.035,
                              color: Colors.black,
                            ))
                        : Text(
                            'Schade 😕 Du hast ' +
                                totalScore.toString() +
                                ' Fragen richtig beantwortet. Versuche es doch noch einmal ☺️',
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
                        text: 'Zurück zur Übersicht',
                        onPressed: () {
                          _resetQuiz();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      const ModulareTruppAusbildung()));
                        }),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    StandardButton(
                        color: buttonColor,
                        text: 'Quiz neu starten',
                        onPressed: () {
                          _resetQuiz();
                        }),
                  ],
                ),
              ));
  }

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      questionIndexHelper = 1;
      totalScore = 0;
      showAnswer = false;
    });
  }

  void answerQuestions(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }
}
