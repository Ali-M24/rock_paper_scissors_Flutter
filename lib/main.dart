import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int top = 1;
  int bottom = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vb'),
      home: Scaffold(
        body: Scaffold(
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            backgroundColor: Colors.red,
            centerTitle: true,
            title: Text(
              'بازی سنگ کاغذ قیچی',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage('assets/images/$top.png'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300.0, 60.0),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      setState(() {
                        top = Random().nextInt(3) + 1;
                        bottom = Random().nextInt(3) + 1;
                      });
                    },
                    child: Text('شروع بازی'),
                  ),
                  Image(
                    image: AssetImage('assets/images/$bottom.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
