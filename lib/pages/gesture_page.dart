import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          print("text is pressed");
        },
        onDoubleTap: () {
          print("text is pressed twice");
        },
        onLongPress: () {
          print("text is long pressed");
        },
        child: Text(
          "Press Me",
          style: TextStyle(fontSize: 25),
        ),
      )),
    );
  }
}
