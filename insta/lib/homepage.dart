import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "Images/story1.jpg",
    "Images/story2.jpeg",
    "Images/story3.jpg",
    "Images/story4.jfif",
    "Images/story5.jpeg",
    "Images/story6.jpeg",
    "Images/story7.jpeg",
    "Images/story8.jpeg",
    "Images/story9.jpg",
    "Images/story10.jpg",
    "Images/story11.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "Images/Insta_text.png",
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.add_circle_outline)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.favorite_border)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.chat_bubble_outline)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //STORY PART
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  11, 
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("Images/story_color.png"),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage(profileImages[index])
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


