import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AirResult extends StatefulWidget {
  const AirResult({Key? key}) : super(key: key);

  @override
  _AirResultState createState() => _AirResultState();
}

class _AirResultState extends State<AirResult> {
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
                      "CONGRATULATIONS!",
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
              const Text(
                "Water",
                textAlign: TextAlign.center,
                style: TextStyle(
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
