import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final int number;
  final String text;
  final Color color;
  final Function(int) numberChange;
 

  Button({key, this.number, this.color, this.numberChange, this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
            color:color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            onPressed: () => numberChange(number),
            child: Text(text,
                style: new TextStyle(
                  fontSize: 26.0,
                  color: Colors.white,
                ))),
      ),
    );
  }
}
