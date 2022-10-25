import 'package:flutter/material.dart';

import '../result/mainResult.dart';
import '../service/colorItem.dart';

class EyeColorSecond extends StatelessWidget {
  final List<ColorItem> _items = [
    ColorItem("", "Warm Brown", "water"),
    ColorItem("", "Dark Amber", "water"),
    ColorItem("", "Hazel", "water"),
    ColorItem("", "Dark Olive", "water"),
    ColorItem("", "Dark Green", "water"),
    ColorItem("", "Turquoise", "water"),
    ColorItem("", "Light Olive", "water"),
    ColorItem("", "Light Amber", "water"),
    ColorItem("", "Clear Blue", "water"),
    ColorItem("", "Clear Green", "water"),
    ColorItem("", "Aqua", "water"),
    ColorItem("", "", "water"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen one ☝️'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainResult(
                    name: _items[index].name,
                    category: _items[index].category,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  child: Column(
                children: [
                  Image.asset(_items[index].image),
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
