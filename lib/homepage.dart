import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1=0,num2=0,output=0;
  final TextEditingController t1= new TextEditingController(text: '0');
  final TextEditingController t2= new TextEditingController(text: '0');
  
void doadd()
 {
   setState(() {
     num1= int.parse(t1.text);
     num2 = int.parse(t2.text);
    output= num1+num2;
   });
 }
   void dosub()
 {
   setState(() {
     num1= int.parse(t1.text);
     num2 = int.parse(t2.text);
    output= num1-num2;
   });
 }
   void domul()
 {
   setState(() {
     num1= int.parse(t1.text);
     num2 = int.parse(t2.text);
    output= num1*num2;
   });
 }

 void dodiv()
 {
   setState(() {
     num1= int.parse(t1.text);
     num2 = int.parse(t2.text);
    output= num1~/num2;
   });
 }

 void doclear()
 {
   setState(() {
   
 t1.text='0';
 t2.text='0';
   });
 }
 
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
            new Text('Output = $output',
            style: new TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87

            ),),
            
          new TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
              hintText: ("Enter the Number 1"),
              
            ),
            controller: t1,
          ),
          new TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
              hintText: ("Enter the Number 2"),

            ),
            controller: t2,
          ),
          new Padding(
            padding: const EdgeInsets.all(20.0),
          ),
          new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
          children: <Widget>[
            new RaisedButton(
              child: new Text('+'),
              onPressed: () {
                doadd();
              },

            ),
            new RaisedButton(
              child: new Text('-'),
              onPressed: () {
                dosub();
              },

            ),
           
          ],

          ),
          new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new RaisedButton(
              child: new Text('*'),
              onPressed: () {
                domul();
              },

            ),
            new RaisedButton(
              child: new Text('/'),
              onPressed: () {
                dodiv();
              },

            ),
           
          ],

          ),
          new Padding(
            padding: const EdgeInsets.all(20.0),
            ),

            new Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: new Text('CLEAR'),
              onPressed: () {
                doclear();
              },

            ),
        ],

        ),
          ]
      )
      ),
    ); 
  }
}

