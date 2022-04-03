import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posttest 1 Rivan"),
      ),
      body: Container(
        height: tinggi,
        width: lebar,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.deepOrange, Colors.yellow, Colors.deepOrange]),
          border: Border.all(
            color: Colors.black,
            width: 15,
          ),
          borderRadius: BorderRadius.circular(75),
        ),
        child: const Text(
          "Rivan Abdillah\n2009106025\nInformatika A20",
          style: TextStyle(
              fontSize: 45,
              color: Color.fromARGB(255, 0, 49, 88),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
