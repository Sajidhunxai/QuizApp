import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:untitled/color_analysis_test/eye/eyeColorForthInternet.dart';

import '../eye/eyeColorSecondInternet.dart';
import '../eye/eyeColorThirdInternet.dart';
import '../eye/eyeColorFirstLocal.dart';
import '../result/water.dart';

class ThirdQuestion extends StatefulWidget {
  const ThirdQuestion({Key? key}) : super(key: key);

  @override
  _ThirdQuestionState createState() => _ThirdQuestionState();
}

class _ThirdQuestionState extends State<ThirdQuestion> {
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
            const Center(
              child: Text(
                "3. Do you have light skin, light eyes and light hair color?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  _progress = 0;
                  _timer?.cancel();
                  _timer = Timer.periodic(const Duration(milliseconds: 3),
                      (Timer timer) {
                    EasyLoading.showProgress(_progress,
                        status: '${(_progress * 100).toStringAsFixed(0)}%');
                    _progress += 0.03;

                    if (_progress >= 1) {
                      _timer?.cancel();
                      EasyLoading.dismiss();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EyeColorThirdInternet()),
                      );
                    }
                  });
                },
                label: Text("Yes"),
                icon: Icon(Icons.circle),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  _progress = 0;
                  _timer?.cancel();
                  _timer = Timer.periodic(const Duration(milliseconds: 3),
                      (Timer timer) {
                    EasyLoading.showProgress(_progress,
                        status: '${(_progress * 100).toStringAsFixed(0)}%');
                    _progress += 0.03;

                    if (_progress >= 1) {
                      _timer?.cancel();
                      EasyLoading.dismiss();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EyeColorForthInternet()),
                      );
                    }
                  });
                },
                label: Text("No"),
                icon: Icon(Icons.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
