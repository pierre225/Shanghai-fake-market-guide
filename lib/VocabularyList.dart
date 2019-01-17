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
          _VocabularyItem(english: "Hello", chinese: "Ni Hao", audioFile: "nihao", audioCache: _audiocache,),
          _VocabularyItem(english: "How much", chinese: "duo shao qian", audioFile: "duoshaoqian", audioCache: _audiocache,),
          _VocabularyItem(english: "Expensive", chinese: " gui", audioFile: "gui", audioCache: _audiocache,),
          _VocabularyItem(english: "Too Expensive", chinese: "Tai gui", audioFile: "taigui", audioCache: _audiocache,),
          _VocabularyItem(english: "Good quality", chinese: "zhi liang hao", audioFile: "zhilianghao", audioCache: _audiocache,),
          _VocabularyItem(english: "Bad Quality", chinese: "zhi liang yi ban", audioFile: "zhiliangyiban", audioCache: _audiocache,),
          _VocabularyItem(english: "I don't have", chinese: "Wo de qian bu gou", audioFile: "wodeqianbugou", audioCache: _audiocache,),
          _VocabularyItem(english: "I don't want", chinese: "Wo bu yao", audioFile: "wobuyao", audioCache: _audiocache,),
          _VocabularyItem(english: "I want less", chinese: "Pian yi dian", audioFile: "pianyidian", audioCache: _audiocache,),
          _VocabularyItem(english: "Do you have other", chinese: "You mei you bie de chi ma", audioFile: "youmeiyoubiedechima", audioCache: _audiocache,),
          _VocabularyItem(english: "Bigger", chinese: "Da yi hao", audioFile: "dayihao", audioCache: _audiocache,),
          _VocabularyItem(english: "Smaller", chinese: "Xiao yi hao", audioFile: "xiaoyihao", audioCache: _audiocache,),
          _VocabularyItem(english: "Thank you", chinese: "Xie xie", audioFile: "xiexie", audioCache: _audiocache,),
          _VocabularyItem(english: "Goodbye", chinese: "Bai bai", audioFile: "byebye", audioCache: _audiocache,),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: RoundBackground(
          radius: 20,
          insideColor: Colors.white,
          outsideColor: Colors.lightBlueAccent,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(english, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Text(chinese, style: TextStyle(fontSize: 15, color: Colors.black45))
                    ],
                  ),
                  Image.asset("assets/items/ic_son.png", width: 50, height: 50,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
