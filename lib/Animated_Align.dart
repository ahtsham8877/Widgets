import 'package:flutter/material.dart';

class Animat1 extends StatefulWidget {
  @override
  _Animat1State createState() => _Animat1State();
}

class _Animat1State extends State<Animat1> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        height: 250,
        width: 50,
        color: Colors.blue,
        child: AnimatedAlign(
          alignment: selected ? Alignment.topLeft : Alignment.bottomRight  ,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 50.0),
        ),
      ),
    );
  }
}
