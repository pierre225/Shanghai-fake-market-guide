import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:shanghai/common/RoundBackground.dart';

class VocabularyList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VocabularyListState();
  }
}

class _VocabularyListState extends State<VocabularyList> {
  static AudioPlayer advancedPlayer = new AudioPlayer();
  static AudioCache _audiocache = new AudioCache(prefix: "audio/", fixedPlayer: advancedPlayer);

  @override
  void initState() {
    super.initState();
  }

  void playSound() {
    _audiocache.play("byebye.mp3");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vocabulary"), backgroundColor: Colors.blueAccent,),
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
        children: <Widget>[
          _VocabularyItem(english: "Bye bye", chinese: "Bye bye", audioFile: "byebye", audioCache: _audiocache,)
        ],
      ),
    );
  }
}

class _VocabularyItem extends StatelessWidget {
  final String english;
  final String chinese;
  final String audioFile;
  final AudioCache audioCache;

  const _VocabularyItem({
      @required this.english,
      @required this.chinese,
      @required this.audioFile,
      @required this.audioCache,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {audioCache.play(audioFile + ".mp3"); },
      child: RoundBackground(
        radius: 20,
        insideColor: Colors.white,
        outsideColor: Colors.lightBlueAccent,
        child: Container(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(english),
                  Text(chinese)
                ],
              ),
              Image.asset("assets/items/ic_son.png", width: 50, height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
