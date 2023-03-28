import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "Images/1.jpeg",
    "Images/2.jpeg",
    "Images/3.jpeg",
    "Images/4.jpeg",
    "Images/5.jpeg",
    "Images/6.jpeg",
    "Images/7.jpeg",
    "Images/8.jpeg",
    "Images/9.jpeg",
    "Images/10.jpeg",
    "Images/11.jpeg",
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
                      backgroundImage: AssetImage(profileImages[index]),
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


