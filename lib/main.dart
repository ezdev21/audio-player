import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:music-player/music_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TiruHakim',
      theme:ThemeData(
        primarySwatch:Colors.blue
      ), 
      home: MusicMenu()
    );
  }
}
