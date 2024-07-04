import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  _doSign() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Welcome to home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (input) =>
                    !input!.contains("@") ? "Please enter a valid email" : null,
                onSaved: (input) => _email = input,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                validator: (input) =>
                    input!.length < 6 ? "Must be at least 6 characters" : null,
                onSaved: (input) => _password = input,
                obscureText: true,
              ),
            ),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                _doSign();
              },
              child: Text("Sign In"),
            )
          ],
        ),
      ),
    );
  }
}
