import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class buttonWithIcon extends StatelessWidget {
  final Function onPressed;
  final String label;
  final Icon icon;
  const buttonWithIcon({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer? _timer;
    late double _progress;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          _progress = 0;
          _timer?.cancel();
          _timer =
              Timer.periodic(const Duration(milliseconds: 3), (Timer timer) {
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
        label: Text(label),
        icon: icon,
      ),
    );
  }
}
