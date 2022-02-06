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
          height: size.height * 0.08 ,
          width: size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(32.0)),
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Center(
              child: Text(
                text,
                style:  TextStyle(
                  fontSize: size.height * 0.021,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
            ),
          )),
    );
  }
}
