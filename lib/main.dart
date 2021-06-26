import 'package:flutter/material.dart';
import 'package:flutterlistviewheadersample/my_list_view_screen.dart';
import 'package:flutterlistviewheadersample/soccer_player_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListViewScreen(),
    );
  }
}