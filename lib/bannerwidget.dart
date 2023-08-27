import 'package:flutter/material.dart';
class banner extends StatelessWidget {
  const banner({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(child: Padding(padding: EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network("https://static.vecteezy.com/system/resources/previews/005/076/592/original/hacker-mascot-for-sports-and-esports-logo-free-vector.jpg"),
          SizedBox(height: 20,),
          Row(children: [

          ],)


      ],))),

    );

  }
}