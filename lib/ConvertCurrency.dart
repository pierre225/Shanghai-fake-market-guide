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
    _rates.putIfAbsent("gbp_rate", () => 0.115204);
    _rates.putIfAbsent("dol_rate", () => 0.147933);
    _rates.putIfAbsent("yen_rate", () => 16.0457);

    super.initState();
  }

  String convertCurrency(String value, double rate) {
    String result = "no data";
    if (value.isNotEmpty) {
      try {
        result = (double.parse(value) * rate).toStringAsFixed(2);
      } catch(e) {
        result = "Invalid input";
      }
    }
    return result;
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
              _CurrencyResult(convertCurrency(_inputValue, _rates["gbp_rate"]), "GBP", _rates["gbp_rate"].toStringAsFixed(2)),
              _CurrencyResult(convertCurrency(_inputValue, _rates["dol_rate"]), "GBP", _rates["dol_rate"].toStringAsFixed(2)),
              _CurrencyResult(convertCurrency(_inputValue, _rates["yen_rate"]), "YEN", _rates["yen_rate"].toStringAsFixed(2)),
              RoundBackground(
                radius: 20,
                outsideColor: Colors.amberAccent,
                insideColor: Colors.white,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: TextField(autofocus: true,
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

