import 'package:flutter/material.dart';
import 'package:instagram/dummydata.dart';
import 'package:instagram/screens/message.dart';
import 'package:instagram/screens/userscreen.dart';

class Usermessages extends StatelessWidget {
  var Message;
  Usermessages({super.key,this.Message});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, MaterialPageRoute(
          builder: (context) => Userscreen(user: message)));
      },
      child: Container(
        // width: 200,
        // height: 100,
        // color: Colors.amber,
        margin: EdgeInsets.only(bottom: 10, top: 10),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: CircleAvatar(
                radius: 38,
                backgroundImage: NetworkImage("${Message["img"]}"),
              ),
            ),
            SizedBox(width: 25),
            Container(
              width: 215,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${Message["usernm"]}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Message["lastseen"]}",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            Icon(Icons.camera_alt_outlined, size: 36),
          ],
        ),
      ),
    );
  }
}
