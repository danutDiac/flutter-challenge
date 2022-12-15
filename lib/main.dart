import 'package:flutter/material.dart';

import 'package:flutter_challenge/src/theme/palette.dart';
import 'src/theme/colorCodes.dart' as color_constants;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge',
      theme: ThemeData(
          primarySwatch: Palette.kToDark,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: color_constants.primaryColor,
            secondary: color_constants.secondaryColor,
            tertiary: color_constants.tertiaryColor,
          ),
          scaffoldBackgroundColor: const Color(0xffF2F2F2),
          fontFamily: 'SpaceMono',
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: color_constants.neutral01Color),
            headline2: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: color_constants.neutral01Color),
            headline3: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: color_constants.primaryColor),
            headline4: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.normal,
                color: color_constants.tertiaryColor),
            bodyText1: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
              color: color_constants.neutral01Color,
            ),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 30, bottom: 30),
            child: Row(
              children: [
                Text('devfinder',
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.apply(color: color_constants.neutral02Color)),
                const Spacer(),
                Container(
                    margin: const EdgeInsets.only(
                      right: 16,
                    ),
                    child: const Text('DARK',
                        style: TextStyle(
                            fontSize: 13,
                            color: color_constants.tertiaryColor,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5))),
                const Icon(
                  Icons.nights_stay_sharp,
                  color: color_constants.tertiaryColor,
                  size: 20,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
