import "package:flutter/material.dart";
import "package:audioPlayer/audioPlayer.dart";

class AudioFile extends StatefulWidget {
  final AudioPlayer player=AudioPlayer();
  const AudioFile({Key? key,this.player}) : super(key: key);

  @override
  _AudioFileState createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration _duration=new Duration();
  Duration _position=new Duration();
  final String path="C:/downloads/atgebamalugn.mp4";
  bool isPlaying=false;
  bool isPaused=false;
  bool isLoop=false;
  List<IconData> _icons=[
    Icons.play_circle_fill,
    Icons.paused_circle_filled
  ];

  @override
  void initState() {
    super.initState();
    this.widget.player.onDurationChanged.listen((d){
      setState(({
        _duration=d;
      });
    });
    this.widget.player.onAudioPositionChanged.listen((d){
      setState(({
        _position=d;
      });
    });
    this.widget.player.setUrl(path);
  }

  Widget btnStart(){
    return IconButton(
      padding: const EdgeInsets.only(bottom:10),
      icon:isPlaying? Icon(_icons[1],size:50,color:Colors.blue) : Icon(_icons[0],size:50,color:Colors.blue),
      onPressed:(){
        if(!isPlaying){
         this.widget.player.play(path);
         setState((){
         isPlaying=true;
         });
        }
        else if(isPlaying){
          this.widget.player.pause(),
          setState((){
           isPlaying=false;
          });
        }
      }
    );
  }

  Widget loadAsset(){
    return Container(
     child:Row(
       crossAxisAlignment:CrossAxisAlignment.center,
       mainAxisAlignment:MainAxisAlignment.spaceEvenly
       children:[
         btnStart()
       ]
     )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          Padding(
            padding:const EdgeInsets.symmetric(horizontal:20),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                Text(_position.toString().split('.').[0],style:TextStyle(fontSize:16)),
                Text(_duration.toString().split('.').[0],style:TextStyle(fontSize:16))
              ]
            )
          ),
          loadAsset()
        ]
      )
    );
  }
}