import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:video_player/video_player.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Gordon());
}

class Gordon extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: AppTree(),
    ),
  );
}

class AppTree extends StatefulWidget {
  AppTreeState createState() => AppTreeState();
}

class AppTreeState extends State<AppTree> {
  VideoPlayerController videoController = VideoPlayerController.asset("assets/videos/video.mp4");
  final AudioCache audioPlayer = AudioCache();

  Widget build(BuildContext context) {
    audioPlayer.load('sounds/dogFood.mp3');
    videoController.setLooping(true);
    videoController.setVolume(0);
    videoController.initialize();
    videoController.play();


    return new Container(
      child: SingleChildScrollView(
        child: new Column(
        children: <Widget>[
      Container(
        height: 100,
        child: Card(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/gordon.jpg"), // no matter how big it is, it won't overflow
                ),
                title: Text(
                    'Hello my name is Gordon Ramsay. I am a professional chef for over 30 years and i love to teach cooking.',
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
        child: AspectRatio(
          aspectRatio: 640 / 360,  // breedte gedeeld door hoogte
          child: VideoPlayer(videoController),
        ),
      ),
      Container(
        child: Card(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/resto.jpg"), // no matter how big it is, it won't overflow
                ),
                title: Text('"This crab is so undercooked I can still hear it singing Under the Sea." -Gordon Ramsay',
                style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ),
      ),
      Container(
        child: Card(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/resto.jpg"), // no matter how big it is, it won't overflow
                ),
                title: Text('"This lamb is so undercooked, its following Mary to school!" -Gordon Ramsay',
                style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ),
      ),
      RaisedButton(
          child: Icon(Icons.arrow_right),
          onPressed: () { audioPlayer.play('sounds/dogFood.mp3', volume: 100); },
      )
    ]
        )
      )
    );
  }
}








