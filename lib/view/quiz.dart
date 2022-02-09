import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../constants/buttons/answer_button.dart';
import '../constants/buttons/standard_button.dart';
import '../constants/colors.dart';
import 'modulare_truppausbildung/modulare_truppausbildung.dart';

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
  String answerHelper = '';
  Color buttonColor = Colors.transparent;
  int questionIndexHelperTwo = 1;

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
                        child: SingleChildScrollView(
                          child: Stack(children: [
                            Column(
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
                                          padding: const EdgeInsets.fromLTRB(
                                              5.0, 15.0, 15.0, 0.0),
                                          child: AutoSizeText(
                                            widget.questions
                                                .elementAt(questionIndex)
                                                .values
                                                .elementAt(0)
                                                .toString(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                            ),
                                            maxLines: 5,
                                            stepGranularity: 2.0,
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
                                        20.0, 0.0, 20.0, 0.0),
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
                                                  int score = int.parse(
                                                      answers['score']
                                                          .toString());

                                                  answerQuestions(score);
                                                  setState(() {
                                                    showAnswer = true;
                                                  });

                                                  answerHelper =
                                                      answers.values.toString();
                                                },
                                                color: lightBlue,
                                                text:
                                                    answers['text'].toString()),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }).toList()
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  2, size.height * 0.3, 0.0, 0.0),
                              child: AutoSizeText(
                                'Frage ' +
                                    questionIndexHelperTwo.toString() +
                                    ' von ' +
                                    widget.questions.length.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                maxLines: 1,
                                stepGranularity: 2.0,
                              ),
                            ),
                          ]),
                        ),
                      )
                    // answer container
                    : Container(
                        decoration: cornerDecoration,
                        child: SingleChildScrollView(
                          child: Stack(children: [
                            Column(
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
                                          padding: const EdgeInsets.fromLTRB(
                                              5.0, 15.0, 15.0, 0.0),
                                          child: AutoSizeText(
                                            widget.questions
                                                .elementAt(questionIndex - 1)
                                                .values
                                                .elementAt(0)
                                                .toString(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                            ),
                                            maxLines: 5,
                                            stepGranularity: 2.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                ...(widget.questions[questionIndex - 1]
                                            ['answers']
                                        as List<Map<String, Object>>)
                                    .map((answers) {
                                  int score =
                                      int.parse(answers['score'].toString());
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32.0),
                                      boxShadow: [
                                        answerHelper ==
                                                answers.values.toString()
                                            ? BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.3),
                                                spreadRadius: 1,
                                                blurRadius:
                                                    3, // changes position of shadow
                                              )
                                            : const BoxShadow(
                                                color: Colors.transparent,
                                              ),
                                      ],
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: AnswerButton(
                                              onPressed: () {},
                                              color: getButtonColor(
                                                  answers['text'].toString(),
                                                  answerHelper,
                                                  score),
                                              text: answers['text'].toString(),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  2, size.height * 0.3, 0.0, 0.0),
                              child: AutoSizeText(
                                'Frage ' +
                                    questionIndexHelperTwo.toString() +
                                    ' von ' +
                                    widget.questions.length.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                maxLines: 1,
                                stepGranularity: 2.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(size.width * 0.75,
                                  size.height * 0.33, 5.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0)),
                                  color: lightPeach,
                                  border:
                                      Border.all(color: darkBlue, width: 1.0),
                                ),
                                height: size.height * 0.06,
                                width: size.width * 0.27,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      showAnswer = false;
                                      answerHelper = '';
                                    });
                                  },
                                  child: const AutoSizeText(
                                    'Weiter',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    maxLines: 1,
                                    stepGranularity: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
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
                        ? AutoSizeText(
                            '🎉 Herzlichen Glückwunsch! Du hast ' +
                                totalScore.toString() +
                                ' Fragen von ' +
                                widget.questions.length.toString() +
                                ' richtig beantwortet 🎉',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                            maxLines: 5,
                            stepGranularity: 2.0,
                          )
                        : AutoSizeText(
                            'Schade 😕 du hast ' +
                                totalScore.toString() +
                                ' Fragen von ' +
                                widget.questions.length.toString() +
                                ' richtig beantwortet. Versuche es doch noch einmal ☺️',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                            maxLines: 5,
                            stepGranularity: 2.0,
                          ),
                    SizedBox(
                      height: size.height * 0.15,
                    ),
                    StandardButton(
                        color: lightBlue,
                        text: 'Quiz neu starten',
                        onPressed: () {
                          _resetQuiz();
                        }),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    StandardButton(
                        color: lightBlue,
                        text: 'Zurück zur Übersicht',
                        onPressed: () {
                          _resetQuiz();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ModulareTruppAusbildung()));
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
      questionIndexHelperTwo = questionIndex + 1;
    });
  }

  Color getButtonColor(String answer, String answerHelper, int score) {
    String userEntry = answerHelper.substring(1, answerHelper.length - 4);
    if (userEntry == answer && score == 1) {
      return Colors.green;
    } else if (userEntry == answer && score == 0) {
      return Colors.red;
    } else if (userEntry != answer && score == 1) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
