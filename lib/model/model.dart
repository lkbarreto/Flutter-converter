import 'package:flutter/material.dart';
import 'package:demo_app/widgets/binary_decimal.dart';
import 'package:demo_app/widgets/decimal_binary.dart';

enum WidgetMarker { Binary, Decimal }

class Model extends ChangeNotifier {
  WidgetMarker _state = WidgetMarker.Binary;
  String _binary = "0";
  String _decimal = "0";
  String _text = "Binario -> Decimal";

  WidgetMarker get state => _state;

  String get binary => _binary;
  String get decimal => _decimal;
  String get text => _text;

  void convertion(int action, int k) {
    switch (action) {
      case 1:
        _binary = _binary + k.toString();
        _decimal = int.parse(_binary, radix: 2).toRadixString(10);
        break;
      case 2:
        _decimal = _decimal + k.toString();
        _binary = int.parse(_decimal, radix: 10).toRadixString(2);
        break;
    }
    notifyListeners();
  }

  void reset() {
    _binary = "0";
    _decimal = "0";

    notifyListeners();
  }

  void view() {
    switch (_state) {
      case WidgetMarker.Binary:
        _text = "Decimal -> Binario";
        changeValue(WidgetMarker.Decimal);
        break;
      case WidgetMarker.Decimal:
        _text = "Binario -> Decimal";
        changeValue(WidgetMarker.Binary);
        break;
    }
  }

  Widget getCurrent() {
    switch (_state) {
      case WidgetMarker.Binary:
        return Binary(
          numberChange: (int number) {
            if (number == null) {
              reset();
            } else {
              convertion(1, number);
            }
          },
        );
      case WidgetMarker.Decimal:
        return DecimalWidget(numberChange: (int number) {
          if (number == null) {
            reset();
          } else {
            convertion(2, number);
          }
        });
      default:
        return Binary(
          numberChange: (int number) {
            convertion(1, number);
          },
        );
    }
  }

  void changeValue(WidgetMarker value) {
    _state = value;
    notifyListeners();
  }
}
