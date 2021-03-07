import "package:flutter/material.dart";
import 'Screen/Home_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon application",
      theme: new ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(158, 13, 13, 1)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
