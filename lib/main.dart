import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());
_launchURLBrowser() async {
  final url = Uri.parse("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
  if (await canLaunchUrl(
    url,
  )) {
    await launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
  } else {
    throw 'Could not launch $url';
  }
}

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
                  title: SizedBox(
                    height: 200,
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
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
                                Image(
                                    image:
                                        AssetImage('pictures/latoxlogo.png')),
                                Text(
                                  'Chage the navigation method',
                                )
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18))),
                              onPressed: _launchURLBrowser,
                              child: const Column(
                                children: [
                                  Image(
                                      image:
                                          AssetImage('pictures/latoxlogo.png')),
                                  Text(
                                    'Give your phone a new look with themes',
                                  )
                                ],
                              )),
                        ))
                      ],
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Connections',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const ListTile(
                  title: Expanded(
                      child: ElevatedButton(
                          onPressed: main, child: Text('Satelite'))),
                ),
                const ListTile(
                  title: Expanded(
                      child: ElevatedButton(
                          onPressed: _launchURLBrowser, child: Text('Wi-Fi'))),
                ),
                const ListTile(
                  title: Expanded(
                      child: ElevatedButton(
                          onPressed: _launchURLBrowser,
                          child: Text('Mobile Network'))),
                ),
                const ListTile(
                  title: Expanded(
                      child: ElevatedButton(
                          onPressed: _launchURLBrowser,
                          child: Text('Hotspot and Network Sharing'))),
                ),
                const ListTile(
                  title: Expanded(
                      child: ElevatedButton(
                          onPressed: _launchURLBrowser,
                          child: Text('Extra Network Settings'))),
                ),
                const ListTile(
                  title: Expanded(
                      child: ElevatedButton(
                          onPressed: _launchURLBrowser,
                          child: Text('Bluetooth'))),
                ),
                const ListTile(
                  title: Text(
                    'Display',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const ListTile(
                  title: Expanded(
                      child: ElevatedButton(
                          onPressed: _launchURLBrowser,
                          child: Text('Wallpaper and themes'))),
                ),
                ListTile(
                    title: Expanded(
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
                            child: const Text('Navigation method')))),
                const ListTile(
                  title: Text(
                    'Connections',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Connections',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Connections',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
          ),
          body: SizedBox(
            height: 200,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: main,
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: const Column(
                      children: [
                        Image(image: AssetImage('pictures/latoxlogo.png')),
                        Text(
                          'Buttons',
                        ),
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: main,
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: const Column(
                      children: [
                        Image(image: AssetImage('pictures/latoxlogo.png')),
                        Text(
                          'Gestures',
                        ),
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}
