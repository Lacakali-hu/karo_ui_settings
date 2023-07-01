import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Settings';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        fontFamily: 'Cabin',
        colorSchemeSeed: const Color.fromRGBO(43, 255, 0, 1),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 180,
          title: const Text(
            title,
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              title: const Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(),
            ListTile(),
            ListTile(),
            ListTile(),
          ],
        ),
      ),
    );
  }
}
