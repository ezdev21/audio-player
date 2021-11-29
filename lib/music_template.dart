import "package:flutter/material.dart";

class MusicTemplate extends StatefulWidget {
  Music music;
  MusicTemplate({Key? key},Music music) : super(key: key);

  @override
  _MusicTemplateState createState() => _MusicTemplateState();
}

class _MusicTemplateState extends State<MusicTemplate> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
       Navigator.push(context,MaterialPageRoute(builder,context=>AudioFile()));
      },
      child:Container(
      decoration:BoxDecoration(
       image:DecorationImage(
         fit:BoxFit.cover,
         image:AssetImage(music.path)
       )
      ),
      child:Row(
        children:[
          Text("${music.title}",style:TextStyle(fontSize:20)),
          Text("${music.singer}",style:TextStyle(fontSize:20))
        ]
      )
     )
    );
  }
}