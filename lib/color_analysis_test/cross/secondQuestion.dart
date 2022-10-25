import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/color_analysis_test/cross/thirdQuestion.dart';
import '../../constants/buttons.dart';
import '../eye/eyeColorSecondInternet.dart';
import '../eye/eyeColorsSecond.dart';
import '../eye/eyeColorFirstLocal.dart';

class SecondQuestion extends StatefulWidget {
  const SecondQuestion({Key? key}) : super(key: key);

  @override
  _SecondQuestionState createState() => _SecondQuestionState();
}

class _SecondQuestionState extends State<SecondQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Color Quiz")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Center(
              child: Text(
                "2. Do you have strawberry or obvious red hair color?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              child: Image.asset('assets/images/coloranalysis/hair/ice.jpg'),
            ),
            buttonWithIcon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EyeColorSecondInternet()),
                );
              },
              icon: const Icon(Icons.check),
              label: 'Yes',
            ),
            buttonWithIcon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdQuestion()),
                );
              },
              icon: const Icon(Icons.close),
              label: 'No',
            ),
          ],
        ),
      ),
    );
  }
}
