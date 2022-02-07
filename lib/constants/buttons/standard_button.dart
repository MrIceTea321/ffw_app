import 'package:auto_size_text/auto_size_text.dart';
import 'package:ffw_app/constants/colors.dart';
import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function() onPressed;

  const StandardButton(
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
          height: size.height * 0.1,
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
                style: TextStyle(
                  fontSize: size.height * 0.03,
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
            ),
          )),
    );
  }
}
