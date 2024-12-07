import 'package:facebook/posts_details.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
posts_details post;
  Posts(this.post);
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/images/${post.user_photo}.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff242527),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "8h .",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff898f9c),
                          ),
                        ),
                        Image.asset(
                          "assets/images/Earth.png",
                          width: 12,
                          height: 12,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.more_horiz_outlined,
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Image.asset(
          "assets/images/${post.post_photo}.jpg",
          width: 600,
          height: 271,
          fit: BoxFit.fitWidth,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 18,
            ),
            Image.asset("assets/images/like.png",
            ),
            SizedBox(
              width: 15,
            ),
            Image.asset("assets/images/comment.png"),
            SizedBox(
              width: 15,
            ),
            Image.asset("assets/images/share.png"),
            Spacer(),
            Image.asset(
              "assets/images/mark.png", 
              width: 24, 
              height: 30,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              width: 19,
            ),
          ],
        ),
      Container(
              height: 0.5,
              width: double.infinity,
              color: Color(0xff898F9C),
            ),
      ],
      
    );
  }
}
