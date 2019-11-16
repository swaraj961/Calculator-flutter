import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Calculator'),
        centerTitle: true,
      ),
      body: new Container(
        padding: EdgeInsets.all(80.0),
        child:  new Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          new TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
              hintText: ("Enter the Number 1"),
            ),
          ),
          new TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
              hintText: ("Enter the Number 2"),

            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(20.0),
          ),
          new Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: new Text('+'),
              onPressed: () {},

            ),
            new RaisedButton(
              child: new Text('-'),
              onPressed: () {},

            ),
           
          ],

          ),
          new Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: new Text('*'),
              onPressed: () {},

            ),
            new RaisedButton(
              child: new Text('/'),
              onPressed: () {},

            ),
           
          ],

          )
        ],

        ),
      ),
    ); 
  }
}
