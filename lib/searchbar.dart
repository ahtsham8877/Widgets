import 'package:flutter/cupertino.dart';

class SearchBar2 extends StatefulWidget {
  const SearchBar2({Key? key}) : super(key: key);

  @override
  _Widget063State createState() => _Widget063State();
}

class _Widget063State extends State<SearchBar2> {
  String?  _currentText ;
  
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 39),
          Center(
            child: CupertinoSwitch(
              value: _lights,
              onChanged: (bool value) {
                setState(() {
                  _lights = value;
                });
              },
            ),
          ),
          SizedBox(height: 50),
          CupertinoSegmentedControl(
          
            children: {
              
              'Flutter': Container(
                
                
              
                color: _currentText == 'Flutter'
                    ? CupertinoColors.systemOrange
                    : CupertinoColors.white,
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Text('Flutter'),
              ),
              'Mapp': Container(
                color: _currentText == 'Mapp'
                    ? CupertinoColors.systemOrange
                    : CupertinoColors.white,
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Text('Mapp'),
              ),
              'YouTube': Container(
                color: _currentText == 'YouTube'
                    ? CupertinoColors.systemOrange
                    : CupertinoColors.white,
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Text('YouTube'),
              ),
            },
            onValueChanged: (String? value) {
              setState(() {
                _currentText = value;
              });
            },
            groupValue: _currentText,
          ),
          SizedBox(height: 50),
          _currentText != null
              ? Text(
                  _currentText!,
                  style: TextStyle(fontSize: 50),
                )
              : Container(height: 20),
        ],
      ),
    );
  }
}
