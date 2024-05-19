import 'package:flutter/material.dart';
import 'package:nn/Home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home2(),
      theme: ThemeData.dark(),
    );
  }
}