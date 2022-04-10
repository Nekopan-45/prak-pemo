import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget container1() {
    return Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/ace.jpeg'),
        ),
      ),
    );
  }

  Widget container2() {
    return Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/aot.jpeg'),
        ),
      ),
    );
  }

  Widget container3() {
    return Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/zero2.jpeg'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rivan Abdillah'),
      ),
      body: Container(
        width: 500,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  container1(),
                  container2(),
                  container3(),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Tekan",
                style: TextStyle(fontSize: 25),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                primary: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
