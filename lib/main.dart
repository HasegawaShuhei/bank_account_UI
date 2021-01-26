import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 100,
          leading: IconButton (
            icon: Icon(Icons.home),
            onPressed: () {
            //  todo
            },
          ),
          title: Text("口座"),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  icon: Icon(
                      Icons.refresh_rounded),
                  label: Text("更新", style: TextStyle(fontSize: 12),),
                  onPressed: () {
                    //todo
                  },
                ),
              ],
            ),
          ],
          bottom: PreferredSize(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("残高合計", style: TextStyle(fontSize: 20),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 60),
                    child: Text("""100,000,000円""", style: TextStyle(fontSize: 36),),
                  ),
                ],
              ),
              preferredSize: Size.fromHeight(kToolbarHeight)),
        ),
      ),
    );
  }
}
