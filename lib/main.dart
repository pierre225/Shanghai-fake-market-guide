import 'package:flutter/material.dart';
import 'package:shanghai/AdvicesList.dart';
import 'package:shanghai/ConvertCurrency.dart';
import 'package:shanghai/PriceList.dart';
import 'package:shanghai/VocabularyList.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                MainButton(
                    background: Colors.blueGrey,
                    title: "Conseils",
                    titleColor: Colors.black,
                    imageUri: "ic_commandments.png",
                    nextPage: AdviceList()),
                MainButton(
                    background: Colors.red,
                    title: "Locations",
                    titleColor: Colors.black,
                    imageUri: "marker.png",
                    nextPage: PriceList()),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                MainButton(
                    background: Colors.blue,
                    title: "Vocabulaire",
                    titleColor: Colors.black,
                    imageUri: "talk.png",
                    nextPage: VocabularyList()),
                MainButton(
                    background: Colors.amber,
                    title: "Devises",
                    titleColor: Colors.black,
                    imageUri: "convert.png",
                    nextPage: ConvertCurrency()),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                MainButton(
                    background: Colors.green,
                    title: "Liste des prix",
                    titleColor: Colors.black,
                    imageUri: "list.png",
                    nextPage: PriceList()),
              ],
            ),
          )
        ],
      ),
    ),
  ));
}

class MainButton extends StatelessWidget {
  final Color background;
  final String title;
  final Color titleColor;
  final String imageUri;
  final Widget nextPage;

  const MainButton({
    Key key,
    @required this.background,
    @required this.title,
    @required this.titleColor,
    @required this.imageUri,
    @required this.nextPage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        child: Container(
          color: background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(title,
                  style: TextStyle(
                      fontSize: 22,
                      color: titleColor,
                      fontStyle: FontStyle.normal)),
              Image.asset("assets/items/" + imageUri, width: 100, height: 100)
            ],
          ),
        ),
      ),
    );
  }
}


