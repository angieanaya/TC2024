import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String _textValue = '';

  void _updateTextFieldValue(String w){
    _textValue = w;
    print(w);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('State on stateless widget'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged:(value) => _updateTextFieldValue(value),
              ),
              SizedBox(height: 10.0,),
              Text(_textValue),
            ],
          ),
        ),
      ),
    );
  }
}
