import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
void navscrn() => runApp(const NavScrn());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Settings';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        fontFamily: 'Cabin',
        colorSchemeSeed: const Color.fromARGB(255, 255, 0, 0),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ), // standard dark theme
      themeMode: ThemeMode.system, // device controls theme
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
          children: <Widget>[
            const ListTile(
              title: Text(
                'Suggestions',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: navscrn,
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: const Column(
                      children: [
                        Image(image: AssetImage('pictures/latoxlogo.png')),
                        Text('nav')
                      ],
                    ),
                  )),
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18))),
                          onPressed: main,
                          child: const Column(
                            children: [
                              Image(
                                  image: AssetImage('pictures/latoxlogo.png')),
                              Text('theme')
                            ],
                          )))
                ],
              ),
            ),
            const ListTile(
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                'yay',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(),
            const ListTile(),
            const ListTile(),
            const ListTile(),
          ],
        ),
      ),
    );
  }
}

class NavScrn extends StatelessWidget {
  const NavScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Cabin',
          colorSchemeSeed: const Color.fromARGB(255, 255, 0, 0),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ), // standard dark theme
        themeMode: ThemeMode.system, // device controls theme
        home: Scaffold(
            appBar: AppBar(
          toolbarHeight: 180,
          title: const Text(
            '''Navigation 
Method''',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.bold,
            ),
          ),
        )));
  }
}
