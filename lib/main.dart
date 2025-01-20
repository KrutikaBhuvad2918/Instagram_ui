import 'package:flutter/material.dart';
import 'package:instagram/dummydata.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
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
            Icon(Icons.send, size: 35),
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
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            border: Border.all(color: Colors.pink, width: 3),
                          ),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage("${stories[index]["img"]}"),
                          ),
                        ),
                        SizedBox(width: 120),
                        SizedBox(height: 8),
                        Text(
                          "${stories[index]["username"]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ],
                    );
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
                    return Column(
                      children: [
                        Container(
                          height: 80,
                          // color: Colors.blueGrey,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                    color: Colors.pink, width: 3),
                                    borderRadius: BorderRadius.circular(35)),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage("${post[index]["profilepic"]}"),
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                width: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${post[index]["usernm"]}",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(" Follow",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blue[900]),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "${post[index]["location"]}",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey[900]),
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.more_vert, size: 30)
                            ],
                          ),
                        ),
                        Container(
                          height: 400,
                          child: Image.network("${post[index]["postimg"]}",
                          fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 140,
                                // color: Colors.amberAccent,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.favorite_outline,
                                      size: 38,
                                    ),
                                    Icon(Icons.chat_bubble_outline, size: 35),
                                    Icon(Icons.send, size: 35)
                                  ],
                                ),
                              ),
                              Icon(Icons.bookmark_border, size: 35)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 18, top: 2,bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${post[index]["likes"]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    "${post[index]["usernm"]}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${post[index]["caption"]}",
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                              Text("...more", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[700])),
                              Text("${post[index]["views"]}",
                                  style: TextStyle(fontSize: 16,color: Colors.grey[700])),
                              Text("${post[index]["time"]}",style: TextStyle(fontSize: 14,color: Colors.grey[700]))
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
