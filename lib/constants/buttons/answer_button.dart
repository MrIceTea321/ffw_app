import 'package:auto_size_text/auto_size_text.dart';
import 'package:ffw_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function() onPressed;

  const AnswerButton(
      {Key? key,
      required this.color,
      required this.text,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: onPressed,
      child: Container(
          height: size.height * 0.165,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(32.0)),
            color: color,
            border: Border.all(color: darkBlue, width: 2.0),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5.0,2.0,5.0,0.0),
              child: AutoSizeText(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0
                ),
                maxLines: 5,
                minFontSize: 10,
                stepGranularity: 2.0,
              ),
            ),
          )),
    );
  }
}
