import 'package:flutter/material.dart';
import 'package:widgets/main.dart';

class FirstSc extends StatelessWidget {
  const FirstSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
        
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return MyHomePage();
              }),
            );
          },
          child: Text("Home screen here"),
        ),
      ),
    );
  }
}
