import 'package:flutter/material.dart';
import 'package:task3/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 30,),
            customText(
              text: "Sign Up",
              color: Colors.blue,
              fontSize: 50,
              isBold: true,
            ),
            Container(height: 50,),
            customTextField(hintText: "first name"),
            customTextField(hintText: "last name"),
            customTextField(hintText: "telephone"),
            customTextField(hintText: "cnic"),
            customTextField(hintText: "driver licence number"),
            customTextField(hintText: "vehicle registration number"),
            Container(height: 40),
            customRoundCornerButton(
              context,
              title: "Save",
              shadowColor: Colors.blue,
              colors: [Colors.blue, Colors.lightBlue, Colors.cyan],
              margin: false,
              fontSize: 18,
            ),
            Container(height: 10),
            customText(
              color: Colors.blue,
              text: "Cancel",
              fontSize: 18,
              isBold: true,
            ),
          ],
        ),
      ),
    );
  }
}
