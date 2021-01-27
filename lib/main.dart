import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 100,
          leading: IconButton(
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
                  icon: Icon(Icons.refresh_rounded),
                  label: Text(
                    "更新",
                    style: TextStyle(fontSize: 12),
                  ),
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
                    child: Text(
                      "残高合計",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 60),
                    child: Text(
                      """100,000,000円""",
                      style: TextStyle(fontSize: 36),
                    ),
                  ),
                ],
              ),
              preferredSize: Size.fromHeight(kToolbarHeight)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
              child: Container(
                height: 128,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 12, right: 12),
                          child: Text("代表口座", style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 184, top: 12, right: 8, bottom: 8),
                          child: Text("2021/01/27日時点", style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text("山田太郎 様", style: TextStyle(color: Colors.white),),
                            Text("インド支店", style: TextStyle(color: Colors.white),),
                            Padding(
                              padding: const EdgeInsets.only(left:12),
                              child: Text("普通 0123456", style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 260),
                              child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120, top: 4),
                              child: Text("50,000,000円",
                                style: TextStyle(color: Colors.white, fontSize: 24),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
              child: Container(
                height: 128,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 12, right: 12),
                          child: Text("代表口座", style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 184, top: 12, right: 8, bottom: 8),
                          child: Text("2021/01/27日時点", style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text("山田太郎 様", style: TextStyle(color: Colors.white),),
                            Text("スイス支店", style: TextStyle(color: Colors.white),),
                            Padding(
                              padding: const EdgeInsets.only(left:12),
                              child: Text("普通 0123456", style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 260),
                              child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120, top: 4),
                              child: Text("50,000,000円",
                                style: TextStyle(color: Colors.white, fontSize: 24),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(20),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 36,
                      ),
                      Text(
                        "アカウントに口座を追加する",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
