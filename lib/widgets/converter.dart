import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo_app/model/model.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Model>(
        create: (context) => Model(),
        child: Consumer<Model>(
          builder: (context, model, child) {
            return Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          child: Text("${model.text}",
                              style: TextStyle(
                                  color: Theme.of(context).accentColor)),
                          onPressed: () {
                            model.view();
                          },
                        )),
                    Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.centerRight,
                        child: Text(
                          '${model.binary}',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).accentColor,
                              fontSize: 35),
                        )),
                    Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${model.decimal}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor,
                                fontSize: 35))),
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: double.infinity,
                          child: model.getCurrent(),
                        )),
                   
                  ]),
            );
          },
        ));
  }
}
