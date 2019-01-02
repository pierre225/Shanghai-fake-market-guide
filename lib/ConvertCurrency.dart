import 'package:flutter/material.dart';

class ConvertCurrency extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConvertCurrencyState();
  }
}

class ConvertCurrencyState extends State<ConvertCurrency> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.yellow,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Text("Currency Converter", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}