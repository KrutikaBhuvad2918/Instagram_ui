import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  var post;
  Post({super.key, this.post});

  @override
  Widget build(BuildContext context) {
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
                    border: Border.all(color: Colors.pink, width: 3),
                    borderRadius: BorderRadius.circular(35)),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("${post["profilepic"]}"),
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
                          "${post["usernm"]}",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " Follow",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900]),
                        )
                      ],
                    ),
                    Text(
                      "${post["location"]}",
                      style: TextStyle(fontSize: 16, color: Colors.grey[900]),
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
          child: Image.network(
            "${post["postimg"]}",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          padding: EdgeInsets.only(left: 18, top: 2, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${post["likes"]}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "${post["usernm"]}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${post["caption"]}",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Text("...more",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700])),
              Text("${post["views"]}",
                  style: TextStyle(fontSize: 16, color: Colors.grey[700])),
              Text("${post["time"]}",
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]))
            ],
          ),
        )
      ],
    );
  }
}
