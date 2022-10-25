import 'package:flutter/material.dart';

class QuestionConstant extends StatelessWidget {
  final String question;
  const QuestionConstant({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
