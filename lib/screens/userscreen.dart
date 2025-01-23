import 'package:flutter/material.dart';
import 'package:instagram/dummydata.dart';

class Userscreen extends StatelessWidget {
  var user;
  Userscreen({super.key,this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$user"),
      ),
    );
  }
}