import 'package:flutter/material.dart';
import 'package:shanghai/common/RoundBackground.dart';

class AdviceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Advice list"), backgroundColor: Colors.blueGrey,),
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Container(
            child: ListView(
          children: <Widget>[
            AdviceItem("Only cash payments are accepted, some sellers may accept dollars or euros.", "I"),
            AdviceItem("Never accept the first price the seller is telling you.", "II"),
            AdviceItem("No matter what the seller is telling you, everything is fake.", "III"),
            AdviceItem("Sellers are professionals skilled at manipulating emotions, don’t get duped.", "IV"),
            AdviceItem("Before you buy a garment, check for sewing defects.", "V"),
            AdviceItem("Before you buy an electronic device, ask to unpack it and try it.", "VI"),
            AdviceItem("Many shops are selling the same things, if your price isn’t accepted, try another shop with a price a little higher.", "VII"),
            AdviceItem("Sellers can speak english, however, if you can use some chinese words and show that you are not only a tourist, you may get a better price.", "VIII"),
            AdviceItem("When a seller is telling you his « last price », it isn’t necessarily his last price.", "IX"),
            AdviceItem("Be respectful and enjoy your time at the fake market", "X"),
          ],
        )),
      ),
    );
  }
}

class AdviceItem extends StatelessWidget {
  final String _advice;
  final String _number;

  const AdviceItem(@required this._advice, @required this._number);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RoundBackground(
          radius: 20,
          outsideColor: Colors.grey,
          insideColor: Colors.white,
          child: Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
                  child: Text(_number, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text(
                      _advice,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
