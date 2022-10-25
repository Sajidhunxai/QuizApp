import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/src/widgets/image.dart' as img;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/color_analysis_test/service/testa.dart';
import '../result/mainResult.dart';

import 'eyeColorFirstLocal.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<testa> notes = <testa>[];

  fetchNotes() async {
    var url = "https://yourbestcolors.cyou/wp-json/test/v1/search";
    int timeout = 5;
    var response = await http.get(Uri.parse(url));
    var eyes = <testa>[];
    if (response.statusCode == 200) {
      var eyesJson = json.decode(response.body);
      for (var eyeJson in eyesJson) {
        eyes.add(testa.fromJson(eyeJson));
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
        child: FutureBuilder(
          future: fetchNotes(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                              category:
                                  notes[index].answers!.single.text.toString(),
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                            child: Column(
                          children: [
                            img.Image.network(notes[index]
                                .answers!
                                .single
                                .image!
                                .url
                                .toString()),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              notes[index].answers!.single.text.toString(),
                            )
                            // Center(
                            //   child: Container(
                            //     height: 120,
                            //     decoration: BoxDecoration(
                            //       color: const Color(0xff7c94b6),
                            //       image: DecorationImage(
                            //         image: NetworkImage(
                            //             notes[index].image!.url.toString()),
                            //         fit: BoxFit.fill,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // // Image.network(notes[index].image!.url.toString()),
                            //
                            // Padding(
                            //     padding: EdgeInsets.only(top: 10),
                            //     child: Center(
                            //         child: Text(notes[index].text.toString()))),
                          ],
                        )),
                      ),
                    );
                  },
                ),
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            // By default, show a loading spinner.
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
