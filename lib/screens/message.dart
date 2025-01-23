import 'package:flutter/material.dart';
import 'package:instagram/dummydata.dart';
import 'package:instagram/widgets/usermessages.dart';

class Message extends StatelessWidget {
  var msg;
  Message({super.key,this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages",style: TextStyle(fontWeight: FontWeight.bold)),
      ),
          body: ListView.builder(
            itemCount: message.length,
            itemBuilder: (context, index) {
              return Usermessages(Message: message[index]);
            },
          )
        );
    
  }
}
