import "package:flutter/material.dart";

class DetailAudio extends StatefulWidget {
  DetailAudio({Key? key}) : super(key: key);

  @override
  _DetailAudioState createState() => _DetailAudioState();
}

class _DetailAudioState extends State<DetailAudio> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuerry.of(context).size.height;
    final double screenWidth=MediaQuerry.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
       title:Text('music player')
      ),
      body:Stack(
       children:[
         positioned(
          top:0,
          left:0,
          right:0,
          hight:screenHeight/3, 
          child:Container(
           color:Colors.blue[500],
          )
         ),
         positioned(
          top:0,
          left:0,
          right:0,
          child:AppBar(
            
          )
         ),
       ]
      )
    );
  }
}