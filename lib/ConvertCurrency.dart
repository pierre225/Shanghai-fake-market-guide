import 'package:flutter/material.dart';

class ConvertCurrency extends StatefulWidget {

  @override
  _ConvertCurrencyState createState() => _ConvertCurrencyState();

}

class _ConvertCurrencyState extends State<ConvertCurrency> {

  final _rmbValueController = TextEditingController();

  double _eurValue = 0;
  double _dolValue = 0;
  String _value = "";

  _changeRmbValue(String value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.yellow,
        child: SafeArea(
          child: SizedBox.expand(
            child: Column(
              children: <Widget>[
                Text("Currency Converter", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
                TextField(controller: _rmbValueController, onTap: onc(_rmbValueController.text)),
                Text(_value)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

