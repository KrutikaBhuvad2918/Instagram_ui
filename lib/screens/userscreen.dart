import 'package:flutter/material.dart';
import 'package:instagram/dummydata.dart';

class Userscreen extends StatelessWidget {
  var user;
  Userscreen({super.key,this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text(user["usernm"],
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}