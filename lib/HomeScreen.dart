import 'package:facebook/UnderBottomAppbar.dart';
import 'package:facebook/posts.dart';
import 'package:facebook/posts_details.dart';
import 'package:facebook/story.dart';
import 'package:facebook/storydetails.dart';
import 'package:facebook/user_story.dart';
import 'package:facebook/user_story_details.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<Storydetails> stories = [];
List<UserStoryDetails> User_story = [];
List<posts_details> Posts_list = [];

class _HomeScreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    stories = [
      // Storydetails(location: "messi", Formol: "jpg"),
      Storydetails(location: "messi2", Formol: "png",user_image:"goat",user_image_Formol:"png"  ),
      Storydetails(location: "messi3", Formol: "png",user_image:"messicup",user_image_Formol:"png"  ),
      Storydetails(location: "messi4", Formol: "jpeg",user_image:"leva",user_image_Formol:"jpeg"  ),

      // Storydetails(location: "messi2", Formol: "png",user_image:"assets/images/messi2.jpg" ),
      // Storydetails(location: "messi2", Formol: "png",user_image:"assets/images/messi2.jpg" ),
      // Storydetails(location: "messi2", Formol: "png",user_image:"assets/images/messi2.jpg" ),
      // Storydetails(location: "messi2", Formol: "png",user_image:"assets/images/messi2.jpg" ),
      // Storydetails(location: "messi3", Formol: "png"),
      // Storydetails(location: "messi4", Formol: "jpeg"),
      // Storydetails(location: "messi4", Formol: "jpeg"),
      // Storydetails(location: "messi4", Formol: "jpeg"),
    ];
    User_story = [
      UserStoryDetails(location: "messi", Formol: "jpg"), 
    ];
    Posts_list = [
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
      posts_details(user_photo: "Route2", name: "Route", post_photo: "Route"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/Facebook.png",
          width: 156,
          height: 36,
          fit: BoxFit.fitWidth,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/Plus.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/Search.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/Messenger.png"),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          indicatorWeight: 3.0,
          tabs: [
            Tab(
              icon: Image.asset("assets/images/Vector.png"),
            ),
            Tab(
              icon: Image.asset("assets/images/Vector2.png"),
            ),
            Tab(
              icon: Image.asset("assets/images/Store.png"),
            ),
            Tab(
              icon: Image.asset("assets/images/Profile.png"),
            ),
            Tab(
              icon: Image.asset("assets/images/Notification.png"),
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/images/messi.jpg"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
  child: Column(
    children: [
      SizedBox(height: 5),
      Underbottomappbar(),
      SizedBox(height: 10),
      Container(
        height: 3,
        width: double.infinity,
        color: Color(0xff898F9C),
      ),
      SizedBox(height: 16),
      
      Container(
        height: 220,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: User_story.length + stories.length, 
          itemBuilder: (context, index) {
            if (index < User_story.length) {
              return buildStoryUserItem(context, index);
            } else {
              return buildStoryItem(context, index - User_story.length); 
             }
          },
        ),
      ),
            SizedBox(height: 16),
            Container(
              height: 3,
              width: double.infinity,
              color: Color(0xff898F9C),
            ),
            Container(
              color: Color(0xff898F9C),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: buildPostsItem,
                itemCount: Posts_list.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildStoryItem(BuildContext context, int index) {
  return Story(stories[index]);
}

Widget buildStoryUserItem(BuildContext context, int index) {
  return UserStory(User_story[index]);
}

Widget buildPostsItem(BuildContext context, int index) {
  return Posts(Posts_list[index]);
}
