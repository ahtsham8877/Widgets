import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class image extends StatelessWidget {
  const image({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network("https://cdn.pixabay.com/photo/2017/05/10/03/32/lahore-2299773_960_720.jpg"),
    );
  }
}