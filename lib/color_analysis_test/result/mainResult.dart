import 'package:flutter/material.dart';

class MainResult extends StatelessWidget {
  final String category;
  final String name;

  MainResult({Key? key, required this.category, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Result")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: 1000,
              color: Color.fromRGBO(255, 69, 0, 1),
              child: Column(
                children: const [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "CONGRATULATIONS!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Your seasonal PRO Color Palette™ is",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            Text(
              category,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 60.0,
                color: const Color.fromRGBO(102, 85, 187, 1),
              ),
            ),
            Container(
              width: 1000,
              color: Color.fromRGBO(255, 69, 0, 1),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Your seasonal PRO Color Palette™ is designed to help you "
                  "build a brand that is memorable and sustainable. Click"
                  " on your \"season\" below to discover your Digital "
                  "Color Profile™.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ColorButtonResult(
              name: "Spring",
              onpressed: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            ColorButtonResult(
              name: "Autumn",
              onpressed: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            ColorButtonResult(
              name: "Summer",
              onpressed: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            ColorButtonResult(
              name: "Winter",
              onpressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ColorButtonResult extends StatelessWidget {
  final String name;
  final Function onpressed;

  const ColorButtonResult({
    Key? key,
    required this.name,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled))
            return Color.fromRGBO(102, 85, 187, 1);
          return null; // Defer to the widget's default.
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) return Colors.white;
          return null; // Defer to the widget's default.
        }),
        minimumSize: MaterialStateProperty.resolveWith<Size?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled))
            return Size.fromHeight(50);
          return null; // Defer to the widget's default.
        }),
      ),
      onPressed: onpressed(),
      child: Text(
        name,
        style: const TextStyle(fontSize: 25.0),
      ),
    );
  }
}
