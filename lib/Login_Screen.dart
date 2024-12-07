import 'dart:ui';

import 'package:facebook/HomeScreen.dart';
import 'package:facebook/buttom.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? emailError;
  String? passwordError;
  bool _obscureText = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isValidPassword(String password) {
    final hasUppercase = password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = password.contains(RegExp(r'[a-z]'));
    final hasDigits = password.contains(RegExp(r'\d'));
    final hasSpecialCharacters =
        password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    // final isValidLength = password.length >= 8;

    return hasUppercase && hasLowercase && hasDigits && hasSpecialCharacters;
  }

  void validateAndLogin() {
    setState(() {
      final email = emailController.text.trim();
      final password = passwordController.text;

      if (!email.contains("@gmail")) {
        emailError = "Invalid Email";
      } else {
        emailError = null;
      }

      if (!isValidPassword(password)) {
        passwordError =
            "Password must contain uppercase, lowercase, numbers, and special characters.";
      } else {
        passwordError = null;
      }

      if (emailError == null && passwordError == null) {
        Navigator.of(context).popAndPushNamed('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 74),
        child: ListView(
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 62,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                  controller: emailController,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: "Mobile Number or Email Address",
                    hintStyle: TextStyle(
                      color: Color(0xff898F9C),
                      fontSize: 16,
                    ),
                    contentPadding: EdgeInsets.all(16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xff898F9C),
                      ),
                    ),
                    errorText: emailError,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xffEE403D),
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          BorderSide(color: Color(0xFFEE403D), width: 2),
                    ),
                  ),
                  cursorColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      if (!value.contains("@gmail")) {
                        emailError = "Invalid Email";
                      } else {
                        emailError = null;
                      }
                    });
                  }),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: passwordController,
                obscureText: _obscureText,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Color(0xff898F9C),
                    fontSize: 16,
                  ),
                  contentPadding: EdgeInsets.all(16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xff898F9C),
                    ),
                  ),
                  errorText: passwordError,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xffEE403D),
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Color(0xFFEE403D), width: 2),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Color(0xff898F9C),
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
                cursorColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    if (!isValidPassword(value)) {
                      passwordError =
                          "Password must contain uppercase, lowercase, numbers, special characters, and be at least 8 characters.";
                    } else {
                      passwordError = null;
                    }
                  });
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  validateAndLogin();
                },
                style: ElevatedButton.styleFrom(
                  overlayColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Color(0xff1877F2),
                  foregroundColor: Color(0xffFFFFFF),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            // SizedBox(height: 2,),
            SizedBox(
              width: 150,
              height: 50,
              child: TextButton(
                onPressed: () {
                  print("Forgotten Password Pressed");
                },
                child: Text(
                  "Forgotten Password ?",
                  style: TextStyle(
                    color: Color(0xff898F9C),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Buttom()
          ],
        ),
      ),
    );
  }
}
