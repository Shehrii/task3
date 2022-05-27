import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:task3/sign_up.dart';
import 'package:task3/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "giphy.gif",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: const Text(
                  'APP LOGO',
                ),
              ),
              Column(
                children: [
                  customRoundCornerButton(
                    context,
                    title: "Login with Phone Number",
                    colors: [Colors.blue, Colors.lightBlue, Colors.cyan],
                    shadowColor: Colors.blue,
                    fontSize: 18,
                  ),
                  Container(
                    height: 20,
                  ),
                  customRoundCornerButton(
                    context,
                    title: "Login with Facebook",
                    shadowColor: Colors.purple,
                    colors: [
                      Colors.deepPurple,
                      Colors.purple,
                    ],
                    fontSize: 18,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customCircleShapeImageButton(
                          image: "google.png",
                          onTap: () => _handleSignIn(),
                        ),
                        customCircleShapeImageButton(image: "email.png"),
                        customCircleShapeImageButton(image: "twitter.png"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customText(
                        text: "Don't have an account? ",
                        color: Colors.white,
                      ),
                      customText(
                        text: "Sign Up",
                        color: Colors.white,
                        isBold: true,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        ),
                      ),
                      customText(
                        text: " here!",
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
