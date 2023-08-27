import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

class page1  extends StatelessWidget {
  const page1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: 
    ElevatedButton(
      child: const Text('Show About Dialog '),
      onPressed: (){
        showDialog(
          context: context, 
        builder: (context)=> const AboutDialog(
          applicationIcon: FlutterLogo(),
          applicationLegalese: "Legalese",
          applicationName: 'flutter app',
          applicationVersion: "version 1.0.0",
          children: [
            Text("This is text creating by flutter map"),
          ],

        ),
        );

      },
    ));
  }
}