import 'package:flutter/material.dart';

class Underbottomappbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          SizedBox(
            // height: 90,
            width: 15,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/images/messi.jpg"),
          ),
          
          Expanded(
            
            child: Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "What’s in Your Mind?",
                  hintStyle: TextStyle(
                    color: Color(0xff898F9C),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    
                  
                  ),
                border: InputBorder.none
                ),
              ),
            ),
          ),
          Image.asset("assets/images/Photos.png",
          width: 50,
          )
        ],
      );
  }
}