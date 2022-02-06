import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/buttons/standard_button.dart';
import '../constants/colors.dart';

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
  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: lightPeach,
        body: questionIndex < widget.questions.length
            ? Column(children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: size.height * 0.3,
                        width: size.width * 0.9,
                        decoration: shaderDecoration,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Text(
                            widget.questions
                                .elementAt(questionIndex)
                                .values
                                .elementAt(0)
                                .toString(),
                            style: TextStyle(
                              fontSize: size.height * 0.03,
                              color: white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                              answerQuestions(
                                  int.parse(answers['score'].toString()));
                            },
                            color: lightBlue,
                            text: answers['text'].toString(),
                          ),
                        ),
                      )
                    ],
                  );
                }).toList(),
              ])
            : Scaffold(
                backgroundColor: lightPeach,
                body: Container(
                  decoration: shaderDecoration,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text('Auswertung der beantworteten Fragen',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: size.height * 0.03,
                              color: white,
                            )),
                        StandardButton(
                          onPressed: () {
                            print('totoalScore: $totalScore');
                          },
                          text: 'Lösungen Anzeigen',
                          color: peach,
                        ),
                      ],
                    ),
                  ),
                ),
              ));
  }

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestions(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }
}
