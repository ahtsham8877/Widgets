import 'package:flutter/material.dart';
import 'package:widgets/Animated_Align.dart';
import 'package:widgets/Dialog_box.dart';
import 'package:widgets/First.dart';
import 'package:widgets/List_tills.dart';
import 'package:widgets/animatedPhymodel.dart';
import 'package:widgets/animation2.dart';
import 'package:widgets/circulProgress.dart';
import 'package:widgets/image.dart';
import 'package:widgets/searchbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchBar2(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SizedBox(height: 50),
              const page1(),
              const SizedBox(height: 50),
              const ListTills(),
              const SizedBox(height: 50),
              Animat1(),
              const SizedBox(height: 50),
              Animat2(),
              const SizedBox(height: 50),
              const image(),
              const SizedBox(height: 50,),
              const Appbarwidget(),
              const FirstSc(),
              const SizedBox(height: 20,),
                 CircularProgress(),
                 

            ],
          ),
        ),
      ),
    );
  }
}
