import 'package:flutter/material.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            bodySmall: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'BeaufortLOL',
            ),
            bodyMedium: TextStyle(
              color: Colors.yellow,
              fontSize: 24,
              fontFamily: 'BeaufortLOL',
            ),
          ),
        ),
        home: const Home());
  }
}
