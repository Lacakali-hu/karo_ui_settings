import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'placeholder';

    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 180,
              title: const Text(
                'Settings',
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
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18))),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return const NavScrn();
                            }),
                          );
                        },
                        child: const Column(
                          children: [
                            Image(image: AssetImage('pictures/latoxlogo.png')),
                            Text(
                              'nav',
                              style: TextStyle(color: Colors.white),
                            )
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
                                      image:
                                          AssetImage('pictures/latoxlogo.png')),
                                  Text(
                                    'theme',
                                    style: TextStyle(color: Colors.white),
                                  )
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
            )));
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
