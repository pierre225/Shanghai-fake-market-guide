import 'package:flutter/material.dart';
import 'package:shanghai/common/RoundBackground.dart';

class AdviceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Container(
            child: ListView(
          children: <Widget>[
            Center(child: Text("Advice List", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)),
            AdviceItem("advice  adviceadviceadviceadvice advice advice advice advice advice advice1", "I"),
            AdviceItem("advice 2", "II"),
            AdviceItem("advice 3", "III"),
            AdviceItem("advice 3", ""),
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
          outsideColor: Colors.blueGrey,
          insideColor: Colors.white,
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
        ));
  }
}
