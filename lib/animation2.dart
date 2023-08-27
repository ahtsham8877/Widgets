import 'package:flutter/material.dart';

class Animat2 extends StatefulWidget {
  @override
  _Animat1State createState() => _Animat1State();
}

class _Animat1State extends State<Animat2> {
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
      height: selected? 100:200,
      width: selected  ? 200:100 ,
        color: selected? Color.fromRGBO(33, 150, 243, 1) : Color.fromARGB(255, 0, 255, 64),
        child: AnimatedContainer(
          
          alignment: selected ? Alignment.center: AlignmentDirectional.topCenter  ,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 50),
        ),
      ),
    );
  }
}
