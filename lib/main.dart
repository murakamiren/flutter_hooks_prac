import 'package:flutter/material.dart';
import 'package:flutter_hooks_prac/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter hooks prac",
      home: HomeView(),
    );
  }
}
