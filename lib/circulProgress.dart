import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  CircularProgress({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
        
          const CircleAvatar(
            maxRadius: 30,
            backgroundColor: Colors.red,
            child: Text("hlo"),
          ),
          const SizedBox(height: 20),
          const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              backgroundColor: Colors.blue,
            ),
          ),
          const SizedBox(height: 30),
          const CupertinoActivityIndicator(
            color: Color.fromARGB(255, 136, 3, 43),
          ),
          CloseButton(
            color: Colors.red,
            onPressed: () {
              // Handle close button press
            },
          ),
          const SizedBox(height: 20),

          CupertinoButton(
            child: const Text("Sheet"),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) => CupertinoActionSheet(
                  title: const Text("SHEET TITLE"),
                  message: const Text("INFORMATION ABOUT YOU, ETC."),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
                      child: const Text("HY"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: const Text("HLO"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    // Add more actions as needed
                  ],
                ),
              );
            },
          ),

          CupertinoButton(
            child: const Text("AlertBox"),
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) => CupertinoAlertDialog(
                  title: const Text("Alert"),
                  content: const Text("Something else"),
                  actions: <CupertinoDialogAction>[
                    CupertinoDialogAction(
                      child: const Text("Yes"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("No"),
                      isDestructiveAction: true,
                    ),
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Why"),
                      isDestructiveAction: false,
                    ),
                  ],
                ),
              );
            },
          ),

          SizedBox(
            height: 100,
            width: 199,
            child: CupertinoContextMenu(
              child: Image.network(
                "https://static.vecteezy.com/system/resources/previews/018/930/572/original/youtube-logo-youtube-icon-transparent-free-png.png",
                width: 200,
              ),
              actions: <Widget>[
                CupertinoContextMenuAction(
                  child: Text("Hide"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  child: Text("Delete"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  child: Text("Move"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  child: Text("Remove from home screen"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 120,),

          Expanded(
            child: BottomNavigationBar(
    currentIndex: 2,
            
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_a_photo),
                  label: 'Photo',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                //  BottomNavigationBarItem(
                //   icon: Icon(Icons.people,),
                //   label: 'people',
                 
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
