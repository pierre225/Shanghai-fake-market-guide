import 'package:flutter/material.dart';
import 'package:shanghai/common/RoundBackground.dart';

class ConvertCurrency extends StatefulWidget {

  @override
  _ConvertCurrencyState createState() => _ConvertCurrencyState();

}

class _ConvertCurrencyState extends State<ConvertCurrency> {

  // rates
  Map<String, double> _rates;

  TextEditingController _textController;
  String _inputValue;


  @override
  void initState() {
    _textController = new TextEditingController();
    _inputValue = "0";

    _rates = new Map<String, double>();
    _rates.putIfAbsent("eur_rate", () => 0.14285714285);

    super.initState();
  }

  String convertCurrency(String value, double rate) {
    if (!value.isEmpty) {
      return (double.parse(value) * rate).toString();
    }
    return "No data";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Convert Currency"),),
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _CurrencyResult(convertCurrency(_inputValue, _rates["eur_rate"]), "EUR", _rates["eur_rate"].toStringAsFixed(2)),
              RoundBackground(
                radius: 20,
                outsideColor: Colors.amberAccent,
                insideColor: Colors.white,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Chinese RMB value", border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      controller: _textController,
                      onChanged: (text) => setState(() {_inputValue = text;}),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CurrencyResult extends StatelessWidget {

  final String _value;
  final String _currency;
  final String _displayedRate;

  const _CurrencyResult(
      this._value,
      this._currency,
      this._displayedRate
      );

  @override
  Widget build(BuildContext context) {
    return RoundBackground(
      radius: 100,
      insideColor: Colors.white,
      outsideColor: Colors.amberAccent,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(_value, style: TextStyle(fontSize: 18),),
              Column(children: <Widget>[
                Text(_currency, style: TextStyle(fontWeight: FontWeight.bold),),
                Text("(" + _displayedRate + ")")
              ],)
            ],
          ),
        ),
      ),
    );
  }


}

