import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/color_analysis_test/cross/secondQuestion.dart';

import '../../constants/buttons.dart';
import '../../constants/question.dart';
import '../result/water.dart';

class NoQuestion extends StatefulWidget {
  const NoQuestion({Key? key}) : super(key: key);

  @override
  _NoQuestionState createState() => _NoQuestionState();
}

class _NoQuestionState extends State<NoQuestion> {
  Timer? _timer;
  late double _progress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Color Quiz")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const QuestionConstant(
              question: '1. Do you have dark skin, black eyes and black hair?',
            ),
            SizedBox(
              height: 10.0,
            ),
            buttonWithIcon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WaterResult()),
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
                      builder: (context) => const SecondQuestion()),
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
