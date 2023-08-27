import 'package:flutter/material.dart';
class Appbarwidget extends StatelessWidget {
  const Appbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(child: 
      ListView(
        children:const [ 
        
        ListTile(
          leading: Icon(Icons.favorite_sharp),
          title: Text("hloo"),
        subtitle: Text("subtital"),

        ),
        ListTile(title: Text("hloo"),
        subtitle: Text("subtital"),
        leading: Icon(Icons.add),
        ),
        ListTile(title: Text("how are you"),
        subtitle: Text("subtital"),
        leading: Icon(Icons.people),

        ),
        Divider(),
        ListTile(title: Text("NOBODY IS HERE FUCK OFF"),
        subtitle: Text("subtital"),
        ),
        ]
      )),
      appBar: AppBar(
        title: const Text("Flutter map"),
        centerTitle: true,
        actions: <Widget>[
          
          IconButton(
            icon: const Icon(Icons.notification_add),
            onPressed: (() {
            }),
          )
        ],
        backgroundColor: Colors.orange,
       
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
      ),
      body: const Center(
        child: Text("body"),
      ),
    );
  }
}

