import "package:flutter/material.dart";
import "package:audio-player/audio_file.dart";

class DetailAudio extends StatefulWidget {
  DetailAudio({Key? key}) : super(key: key);

  @override
  _DetailAudioState createState() => _DetailAudioState();
}

class _DetailAudioState extends State<DetailAudio> {
  AudioPlayer player;
  @ovveride
  void initState() {
    super.initState();
    player=AudioPlayer();
  }
  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuerry.of(context).size.height;
    final double screenWidth=MediaQuerry.of(context).size.width;
    return Scaffold(
      backgroundColor:Colors.blue[100],
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
            leading:IconButton(
              icon:Icon(Icons.arrow_back_ios),
              onPressed:(){

              }
            ),
            actions:[
             IconButton(
              icon:Icon(Icons.search),
              onPressed:(){

              }
             )
            ],
            backgroundColor:transparent,
            elevation:0.0
          )
         ),
        positioned(
          left:0,
          right:0,
          top:screenHeight/5,
          child:Container(
            decoration:BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(30)
            )
            child:Column(
             chldren:[
               sizedBox(height:screenHeight*0.01),
               Text('atgebam alugn',
                style:TextStyle(
                  fontSize:30,
                  fontWeight:FontWeight.bold,
                  fontFamily:"avenir"
                )
               ),
               Text("Lij Michael",style:TextStyle(fontSize:20)),
               AudioFile(player:player),
             ] 
            )
          )
        ),
        positioned(
         top:screenHeight*0.12,
         left:(screenWidth-150)/2,
         right:(screenWidth-150)/2,
         height:screenHeight*0.16,
         child:Container(
           decoration:BoxDecoration(
             color:Colors.grey[300],
             borderRadius:BorderRadius.circular(20),
             border:Border.all(color:Colors.grey[300],width:2)
           ),
           child:Padding(
             padding:const EdgeInsets.all(20),
             child:Container(
               decoration:BoxDecoration(
               shape:BoxShape.circle,
               border:Border.all(color:Colors.grey[300],width:2),
               image:DecorationImage(
                image:AssetImage(),
                fit:BoxFit.cover
               )
              ),
              
             )
           )
         )
        )
       ]
      )
    );
  }
}