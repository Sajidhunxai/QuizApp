// main.dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // for using json.decode()

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      title: 'Kindacode.com',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The list that contains information about photos
  List _loadedPhotos = [];

  // The function that fetches data from the API
  Future<void> _fetchData() async {
    const apiUrl = 'https://yourbestcolors.cyou/wp-json/test/v1/search';

    final response = await http.get(Uri.parse(apiUrl));
    final data = json.decode(response.body);
    setState(() {
      _loadedPhotos = data;
      print({"dfsdf", _loadedPhotos});
    });
    // _loadedPhotos.where((d) {
    //   return d['id'] == '59';
    //   //you can add another filter conditions too
    // });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kindacode.com'),
        ),
        body: SafeArea(
            child: _loadedPhotos.isEmpty
                ? Center(
                    child: ElevatedButton(
                      onPressed: _fetchData,
                      child: const Text('Load Photos'),
                    ),
                  )
                // The ListView that displays photos
                : ListView.builder(
                    itemCount: _loadedPhotos.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return ListTile(
                        leading: Image.network(
                          _loadedPhotos[index]["image"]["sizes"]["thumbnail"]
                              ["url"],
                          width: queryData.size.height,
                          fit: BoxFit.cover,
                        ),
                        title: Text(_loadedPhotos[index]["text"]),
                      );
                    },
                  )));
  }
}
