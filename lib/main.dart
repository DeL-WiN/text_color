import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApp> {
  late Color colors;
  void generateColor() {
    setState(() {
      colors = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);
    });
  }
  @override
  void initState() {
    generateColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => generateColor(),
      child: Container(
        color: colors,
        child: const Center(
          child: Text(
            "Привіт",
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
