import 'package:flutter/material.dart';
import 'package:flutter_posttest2/launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posstest2 Pemo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: LauncherPage(),
    );
  }
}
