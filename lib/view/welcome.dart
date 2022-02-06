import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        backgroundColor: Colors.white54,
        body: Column(
          children: [
            const Text('Freiwillige Feuerwehr Sommerach',
                style: TextStyle(fontSize: 18.0, color: Colors.red)),
            Expanded(
              child: SafeArea(
                child: SizedBox(
                  height: 200.0,
                  child: Image.asset('images/ffwlogo.png'),
                ),
              ),
            ),
          ],
        ));
  }
}
