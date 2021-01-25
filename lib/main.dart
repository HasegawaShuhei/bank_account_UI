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
          toolbarHeight: 100,
          leading: FlatButton(child: Icon(Icons.home),
            onPressed: (){
            //todo
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
        ),
      ),
    );
  }
}
