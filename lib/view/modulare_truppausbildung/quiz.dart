import 'package:flutter/material.dart';
import '../../constants/buttons/answer_button.dart';
import '../../constants/buttons/standard_button.dart';
import '../../constants/colors.dart';
import 'modulare_truppausbildung.dart';

class Quiz extends StatefulWidget {
  final List<Map<String, Object>> questions;
  final String themengebiet;

  const Quiz({Key? key, required this.questions, required this.themengebiet})
      : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int questionIndex = 0;
  int questionIndexHelper = 1;
  int totalScore = 0;
  bool showAnswer = false;
  List<bool> isPressedList = List.filled(3, false);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: shaderDecoration,
        child: questionIndex < widget.questions.length
            ? Scaffold(
                backgroundColor: Colors.transparent,
                body: !showAnswer
                    // question container
                    ? Container(
                        decoration: cornerDecoration,
                        child: ListView(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            children: [
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(
                                                size.height * 0.25),
                                          ),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                peach,
                                                lightPeach,
                                                white
                                              ])),
                                      height: size.height * 0.35,
                                      width: size.width * 0.9,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 10),
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
                                return Container(
                                  padding: const EdgeInsets.fromLTRB(
                                      20.0, 0.0, 20.0, 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.0),
                                          ),
                                          margin: const EdgeInsets.all(5.0),
                                          child: AnswerButton(
                                              onPressed: () {
                                                answerQuestions(int.parse(
                                                    answers['score']
                                                        .toString()));
                                                setState(() {
                                                  showAnswer = true;
                                                });

                                              },
                                              color: lightBlue,
                                              text: answers['text'].toString()),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }).toList()
                            ]),
                      )
                    // answer container
                    : Container(
                        decoration: cornerDecoration,
                        child: ListView(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            children: [
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(
                                                size.height * 0.25),
                                          ),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                peach,
                                                lightPeach,
                                                white
                                              ])),
                                      height: size.height * 0.35,
                                      width: size.width * 0.9,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 10),
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
                              StandardButton(
                                  color: lightPeach,
                                  text: 'Nächste Frage',
                                  onPressed: () {
                                    setState(() {
                                      showAnswer = false;
                                    });
                                  }),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              ...(widget.questions[questionIndex - 1]['answers']
                                      as List<Map<String, Object>>)
                                  .map((answers) {
                                return Container(
                                  padding: const EdgeInsets.fromLTRB(
                                      20.0, 0.0, 20.0, 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.0),
                                          ),
                                          margin: const EdgeInsets.all(5.0),
                                          child: AnswerButton(
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
                                  ),
                                );
                              }).toList(),
                            ]),
                      ))
            : Scaffold(
                backgroundColor: Colors.transparent,
                body: ListView(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                  children: [
                    SizedBox(
                      height: size.height * 0.35,
                      child: Image.asset('images/ffwlogo.png'),
                    ),
                    totalScore != 0
                        ? Text(
                            '🎉 Herzlichen Glückwunsch! Du hast ' +
                                totalScore.toString() +
                                ' Fragen von ' +
                                widget.questions.length.toString() +
                                ' richtig beantwortet 🎉',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: size.height * 0.035,
                              color: Colors.black,
                            ))
                        : Text(
                            'Schade 😕 Du hast ' +
                                totalScore.toString() +
                                ' Fragen von ' +
                                widget.questions.length.toString() +
                                ' richtig beantwortet. Versuche es doch noch einmal ☺️',
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
                        text: 'Quiz neu starten',
                        onPressed: () {
                          _resetQuiz();
                        }),
                    SizedBox(
                      height: size.height * 0.02,
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
                                       ModulareTruppAusbildung()));
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
