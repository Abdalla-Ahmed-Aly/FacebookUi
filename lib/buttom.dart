import 'package:flutter/material.dart';

class Buttom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, 
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              overlayColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              backgroundColor: Color(0xffFFFFFF),
              foregroundColor: Color(0xffFFFFFF),
              side: BorderSide(color: Colors.blue),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Image.asset("assets/images/Meta Logo.png"),
        ),
      ],
    );
  }
}
