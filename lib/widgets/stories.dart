import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  var stories;
  Story({super.key, this.stories});

  @override
  Widget build(BuildContext context) {
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
            backgroundImage: NetworkImage("${stories["img"]}"),
          ),
        ),
        SizedBox(width: 120),
        SizedBox(height: 8),
        Text(
          "${stories["username"]}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ],
    );
  }
}
