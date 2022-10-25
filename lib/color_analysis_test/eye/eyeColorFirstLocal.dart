import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/widgets.dart';
import '../service/colorItem.dart';

class EyeColorFirstLocal extends StatelessWidget {
  final List<ColorItem> _items = [
    ColorItem("assets/images/coloranalysis/eye/1.-Black.jpg", "Black", "water"),
    ColorItem("assets/images/coloranalysis/eye/2.-Brown-Black.jpg",
        "Brown Black", "water"),
    ColorItem(
        "assets/images/coloranalysis/eye/1.-Violet.jpg", "Violet", "water"),
    ColorItem("assets/images/coloranalysis/eye/1.-Dark-Green.jpg", "Dark Green",
        "water"),
    ColorItem("assets/images/coloranalysis/eye/2.-Dark-Clear-Blue.jpg",
        "Dark Clear Blue", "water"),
    ColorItem("assets/images/coloranalysis/eye/5.Rose-Brown.jpg", "Rose Brown",
        "water"),
    ColorItem(
        "assets/images/coloranalysis/eye/1.-Gray-Blue.jpg",
        "Gray Blue",
        "wate"
            "r"),
    ColorItem("assets/images/coloranalysis/eye/1.-Gray-Green.jpg", "Gray Green",
        "water"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [LocalEyeWidget(items: _items), const NoInternetText()],
      ),
    );
  }
}
