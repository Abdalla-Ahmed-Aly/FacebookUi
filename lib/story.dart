import 'package:facebook/storydetails.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final Storydetails storydetails;
  Story(this.storydetails);
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: 130,
          height: double.infinity, 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/${storydetails.location}.${storydetails.Formol}"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 8, 
          left: 8, 
          child: CircleAvatar(
            radius: 20,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/${storydetails.user_image}.${storydetails.user_image_Formol}"),
            ),
          ),
        ),
      ],
    );
  }
}
