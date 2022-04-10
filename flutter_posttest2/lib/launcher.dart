import 'dart:async';
import 'package:flutter_posttest2/users/landing.dart' as users;
import 'package:flutter/material.dart';

class Assets extends StatelessWidget {
  const Assets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LauncherPage extends StatefulWidget {
  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  Widget container1() {
    return Container(
      width: 500,
      height: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logo.png'),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    pindahPage();
  }

  @override
  void dispose() {
    super.dispose();
  }

  pindahPage() async {
    var durasi = const Duration(seconds: 5);
    // ignore: unnecessary_new
    return new Timer(durasi, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return new users.Home();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orangeAccent,
              Colors.deepOrangeAccent,
              Colors.orangeAccent,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            container1(),
          ],
        ),
      ),
    );
  }
}
