import 'package:flutter/material.dart';
import 'package:xoccer_verse/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XoccerVerse App', 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.pinkAccent[100], primary: Colors.pink[300]),
      ),
      home: MyHomePage(),
    );
  }
}