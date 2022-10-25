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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Container(
                width: 1000,
                color: const Color.fromRGBO(102, 85, 187, 1),
                child: Column(
                  children: const [
                    Text(
                      "dd CONGRATULATIONS!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "This Is Your Elemental Color Palette™!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                category,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 40.0,
                  color: Color.fromRGBO(255, 69, 0, 1),
                ),
              ),
              Container(
                width: 1000,
                color: const Color.fromRGBO(102, 85, 187, 1),
                child: const Text(
                  "Print or save this page to remember your \n Elemental Color "
                  "Palette™ \n for your upcoming workshop or coaching "
                  "session.\n We look forward to seeing you soon! \n The Leading Edge Branding Team! \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
