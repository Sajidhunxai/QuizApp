import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/src/widgets/image.dart' as img;
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../../constants/question.dart';
import '../result/mainResult.dart';
import '../service/EyeColorService.dart';
import 'eyeColorFirstLocal.dart';

class EyeColorFirstInternet extends StatefulWidget {
  const EyeColorFirstInternet({Key? key}) : super(key: key);

  @override
  _EyeColorFirstInternetState createState() => _EyeColorFirstInternetState();
}

class _EyeColorFirstInternetState extends State<EyeColorFirstInternet> {
  List<EyeColors> notes = <EyeColors>[];

  fetchNotes() async {
    var url = "https://yourbestcolors.cyou/wp-json/test/v1/question/10";
    int timeout = 5;
    var response = await http.get(Uri.parse(url));
    var eyes = <EyeColors>[];
    if (response.statusCode == 200) {
      var eyesJson = json.decode(response.body);
      for (var eyeJson in eyesJson) {
        eyes.add(EyeColors.fromJson(eyeJson));
      }
      return eyes;
    } else {
      return "ss";
    }
    return eyes;
  }

  @override
  void initState() {
    fetchNotes().then((value) {
      setState(() {
        notes.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Quiz"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const QuestionConstant(
              question: '1. Do you have dark skin, black eyes and black hair?',
            ),
            Expanded(
              child: FutureBuilder(
                future: fetchNotes(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.hasData) {
                    return Center(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          crossAxisCount: 3,
                        ),
                        itemCount: notes.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainResult(
                                    name: notes[index].text.toString(),
                                    category: notes[index].feedback.toString(),
                                  ),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                  child: Column(
                                children: [
                                  img.Image.network(
                                    notes[index].image!.url.toString(),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(notes[index].text.toString())
                                ],
                              )),
                            ),
                          );
                        },
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return EyeColorFirstLocal();
                  }

                  // By default, show a loading spinner.
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
