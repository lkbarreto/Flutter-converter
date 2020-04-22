import 'package:flutter/material.dart';
import 'package:demo_app/widgets/boton.dart';

class DecimalWidget extends StatelessWidget {
  final Function(int) numberChange;
  final Function() reset;

  DecimalWidget({key, this.numberChange, this.reset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: SizedBox(
            height: double.infinity,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"1",
                    number: 1,
                    numberChange: numberChange,
                  ),
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"2",
                    number: 2,
                    numberChange: numberChange,
                  ),
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"3",
                    number: 3,
                    numberChange: numberChange,
                  ),
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
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"4",
                    number: 4,
                    numberChange: numberChange,
                  ),
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"5",
                    number: 5,
                    numberChange: numberChange,
                  ),
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"6",
                    number: 6,
                    numberChange: numberChange,
                  ),
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
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"7",
                    number: 7,
                    numberChange: numberChange,
                  ),
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"8",
                    number: 8,
                    numberChange: numberChange,
                  ),
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"9",
                    number: 9,
                    numberChange: numberChange,
                  ),
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
                  Button(
                    color: Theme.of(context).accentColor,
                    text:"Borrar",
                    number: null,
                    numberChange: numberChange,
                  ),
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"0",
                    number: 0,
                    numberChange: numberChange,
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}
