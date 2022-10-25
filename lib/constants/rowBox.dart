import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class RowBox extends StatelessWidget {
  const RowBox({
    Key? key,
    required this.url1,
    required this.onPressed1,
    required this.label1,
    required this.url2,
    required this.onPressed2,
    required this.label2,
    required this.url3,
    required this.onPressed3,
    required this.label3,
  }) : super(key: key);

  final String url1;
  final Function onPressed1;
  final String label1;
  final String url2;
  final Function onPressed2;
  final String label2;
  final String url3;
  final Function onPressed3;
  final String label3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                eyeExpanded(
                  url: url1,
                  onPressed: onPressed1,
                ),
              ],
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              children: [
                eyeExpanded(
                  url: url2,
                  onPressed: onPressed2,
                ),
              ],
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              children: [
                eyeExpanded(
                  url: url3,
                  onPressed: onPressed3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class eyeExpanded extends StatelessWidget {
  final String url;
  final Function onPressed;
  const eyeExpanded({
    Key? key,
    required this.url,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer? _timer;
    late double _progress;

    double? width;
    double? height;
    Color? color;
    bool? animate;
    bool? textAppear;

    return Expanded(
      child: InkWell(
        onTap: () {
          _progress = 0;
          _timer?.cancel();
          _timer =
              Timer.periodic(const Duration(milliseconds: 100), (Timer timer) {
            EasyLoading.showProgress(_progress,
                status: '${(_progress * 100).toStringAsFixed(0)}%');
            _progress += 0.03;

            if (_progress >= 1) {
              _timer?.cancel();
              EasyLoading.dismiss();
              onPressed();
            }
          });
        },
        // fillColor: Colors.white,
        // padding: const EdgeInsets.all(2.0),
        // shape: const RoundedRectangleBorder(),
        child: Card(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
