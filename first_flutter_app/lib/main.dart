import 'package:flutter/material.dart';

void main() {
  //MÉTODO ESTÁTICO QUE MANDA A LLAMAR A LA APP
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "New app",
      home: NewWidget(),
    );
  }
}

class Nuevo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('clase'),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to my first app'),
        elevation: 0.5,
        centerTitle: true,
      ),
      body: NewBodyWidget(),
    );
  }
}

class NewBodyWidget extends StatelessWidget {
  const NewBodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_circle, size: 50.0,),
          title: Text(
              'person 1',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
          ),
          subtitle: Text('Company x'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('person 1'),
          subtitle: Text('Company x'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
      ],
    );
  }
}