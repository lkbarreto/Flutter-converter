import 'package:flutter/material.dart';

class DecimalBinary extends StatefulWidget {
  @override
  _DecimalBinaryState createState() => _DecimalBinaryState();
}

class _DecimalBinaryState extends State<DecimalBinary> {
  String _binary = "0";
  String _decimal =
      ""; // _decimal = int.parse(_binary, radix: 2).toRadixString(10);

  void _onPressed(int k) {
    setState(() {
      switch (k) {
        case 0:
          _decimal = _decimal + "0";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 1:
          _decimal = _decimal + "1";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 2:
          _decimal = _decimal + "2";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 3:
          _decimal = _decimal + "3";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 4:
          _decimal = _decimal + "4";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 5:
          _decimal = _decimal + "5";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 6:
          _decimal = _decimal + "6";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 7:
          _decimal = _decimal + "7";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 8:
          _decimal = _decimal + "8";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 9:
          _decimal = _decimal + "9";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
      }
    });
  }

  void _reset() {
    setState(() {
      _binary = "";
      _decimal = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor,
                      fontSize: 35),
                )),
            Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(8.0),
                child: Text('$_decimal',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                        fontSize: 35))),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: double.infinity,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _numberButton(1),
                      _numberButton(2),
                      _numberButton(3),
                    ]),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: double.infinity,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _numberButton(4),
                      _numberButton(5),
                      _numberButton(6),
                    ]),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: double.infinity,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _numberButton(7),
                      _numberButton(8),
                      _numberButton(9),
                    ]),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: double.infinity,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _resetButton(),
                      _numberButton(0),
                    ]),
              ),
            ),
          ]),
    );
  }

  Widget _numberButton(int number) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              _onPressed(number);
            },
            child: Text(number.toString(),
                style: new TextStyle(
                  fontSize: 26.0,
                  color: Colors.white,
                ))),
      ),
    );
  }

  Widget _resetButton() {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Theme.of(context).accentColor,
            height: double.infinity,
            onPressed: () {
              Text("data");
              _reset();
            },
            child: Text("Reset",
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ))),
      ),
    );
  }
}
