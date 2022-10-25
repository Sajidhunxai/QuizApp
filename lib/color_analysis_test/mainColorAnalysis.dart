import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'cross/noQuestion.dart';
import 'eye/eyeColorFirstInternet.dart';

class MainColorAnalysis extends StatefulWidget {
  const MainColorAnalysis({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MainColorAnalysisState createState() => _MainColorAnalysisState();
}

class _MainColorAnalysisState extends State<MainColorAnalysis> {
  Timer? _timer;
  late double _progress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Text(
                "1. Do you have grey tone Hair?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        _progress = 0;
                        _timer?.cancel();
                        _timer = Timer.periodic(const Duration(milliseconds: 2),
                            (Timer timer) {
                          EasyLoading.showProgress(_progress,
                              status:
                                  '${(_progress * 100).toStringAsFixed(0)}%');
                          _progress += 0.03;

                          if (_progress >= 1) {
                            _timer?.cancel();
                            EasyLoading.dismiss();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EyeColorFirstInternet()),
                            );
                          }
                        });
                      },
                      elevation: 2.0,
                      fillColor: Colors.white,
                      padding: const EdgeInsets.all(5.0),
                      shape: const CircleBorder(),
                      child: Image.asset(
                        "assets/images/coloranalysis/ash.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EyeColorFirstInternet()),
                        );
                      },
                      elevation: 2.0,
                      fillColor: Colors.white,
                      padding: const EdgeInsets.all(5.0),
                      shape: const CircleBorder(),
                      child: Image.asset("assets/images/coloranalysis/cool-gray"
                          ".png"),
                    ),
                  ),
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EyeColorFirstInternet()),
                        );
                      },
                      elevation: 2.0,
                      fillColor: Colors.white,
                      padding: const EdgeInsets.all(5.0),
                      shape: const CircleBorder(),
                      child: Image.asset("assets/images/coloranalysis/snp.png"),
                    ),
                  ),
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NoQuestion()),
                        );
                      },
                      elevation: 2.0,
                      fillColor: Colors.white,
                      padding: const EdgeInsets.all(5.0),
                      shape: const CircleBorder(),
                      child:
                          Image.asset("assets/images/coloranalysis/cross.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
