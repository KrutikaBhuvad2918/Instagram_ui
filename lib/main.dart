import 'package:flutter/material.dart';
import 'package:instagram/dummydata.dart';
import 'package:instagram/screens/message.dart';
import 'package:instagram/widgets/posts.dart';
import 'package:instagram/widgets/stories.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget{
  MainApp({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      home: Mainscreen(),
    );
  }
}

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Instagram",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            Icon(Icons.favorite_border, size: 38),
            SizedBox(width: 25),
            IconButton(onPressed: () {
              print("icon pressed");

              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => Message(msg: message)));
            }, icon: Icon(Icons.messenger_outline,size: 30)),
            SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) {
                    return Story(stories: stories[index]);  
                  },
                ),
              ),
              Container(
                // height: 600,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: post.length,
                  itemBuilder: (context, index) {
                    return Post(post : post[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
