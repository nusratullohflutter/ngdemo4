import 'package:flutter/material.dart';

class TextfieldPage extends StatefulWidget {
  const TextfieldPage({super.key});

  @override
  State<TextfieldPage> createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Text Field Page"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //#phonenumber

            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your phone",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.phone_iphone,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),

            //#email

            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your phone",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),

            //#password

            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your phone",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
