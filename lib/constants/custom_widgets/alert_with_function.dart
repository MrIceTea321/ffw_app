import 'package:ffw_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AlertWithFunction extends StatelessWidget {
  final String title;
  final String text;
  final String buttonText;
  final Function() onPressed;

  const AlertWithFunction(
      {Key? key,
      required this.title,
      required this.text,
      required this.buttonText,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
        width: size.width * 0.9,
        height: size.height * 0.5,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(15.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('❗️' + title + '❗️',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size.height * 0.03,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10.0),
            Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black, fontSize: size.height * 0.024)),
            const SizedBox(height: 25.0),
            Container(
              height: size.height * 0.12,
              width: size.width * 0.4,
              decoration: const BoxDecoration(
                color: lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: TextButton(
                  child: Text(buttonText,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.024,
                      )),
                  onPressed: onPressed),
            )
          ],
        ),
      ),
    );
  }
}
