import 'package:flutter/material.dart';
import 'package:demo_app/widgets/boton.dart';

class Binary extends StatelessWidget {
  final Function(int) numberChange;

  Binary({key, this.numberChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: SizedBox(
            height: double.infinity,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"0",
                    number: 0,
                    numberChange: numberChange,
                  ),
                  Button(
                    color: Theme.of(context).primaryColor,
                    text:"1",
                    number: 1,
                    numberChange: numberChange,
                  ),
                ]),
          ),
        ),
       
        Expanded(
          flex: 1,
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
                ]),
          ),
        ),
      ],
    );
        
  }
}
