import "package:flutter/material.dart";
import "package:music-player/music_template.dart";

class MusicMenu extends StatefulWidget {
  MusicMenu({Key? key}) : super(key: key);

  @override
  _MusicMenuState createState() => _MusicMenuState();
}

class _MusicMenuState extends State<MusicMenu> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children:musics.map(music=>{
          return MusicTemplate(music);
        })
      )
    );
  }
}