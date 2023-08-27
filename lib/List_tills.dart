import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTills extends StatelessWidget {
  const ListTills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: AboutListTile(
      icon: Icon(Icons.info),
      applicationIcon: FlutterLogo(),
      applicationLegalese: "list",
      applicationName: "List Tils",
      applicationVersion: "1.1.0",
      aboutBoxChildren: [
        Text(
          "This Text Created By Ahtsham",
          style: TextStyle(color: Color.fromARGB(255, 212, 113, 0)),
        )
      ],
    ));
  }
}
