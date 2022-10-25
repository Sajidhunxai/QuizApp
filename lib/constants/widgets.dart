import 'dart:async';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import '../color_analysis_test/result/mainResult.dart';
import '../color_analysis_test/service/colorItem.dart';

class LocalEyeWidget extends StatelessWidget {
  LocalEyeWidget({
    Key? key,
    required List<ColorItem> items,
  })  : _items = items,
        super(key: key);

  final List<ColorItem> _items;
  Timer? _timer;
  late double _progress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _progress = 0;
              _timer?.cancel();
              _timer = Timer.periodic(const Duration(milliseconds: 2),
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
                      builder: (context) => MainResult(
                        name: _items[index].name,
                        category: _items[index].category,
                      ),
                    ),
                  );
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  child: Column(
                children: [
                  Image.asset(
                    _items[index].image,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(_items[index].name)
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}

class NoInternetText extends StatelessWidget {
  const NoInternetText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Please Connect Internet To get Update's",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.red,
        ),
      ),
    );
  }
}
