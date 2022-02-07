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
          height: size.height * 0.15,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(32.0)),
            color: color,
            border: Border.all(color: darkBlue, width: 2.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
            child: Center(
              child: AutoSizeText(
                text,
                minFontSize: 16,
                stepGranularity: 4.0,
                maxFontSize: 36,
                textAlign: TextAlign.center,
                maxLines: 3,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          )),
    );
  }
}
