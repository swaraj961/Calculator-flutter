import 'package:flutter/material.dart';
import 'homepage.dart';
void main(List<String> args) {
  runApp(App()
  );
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.red,  
        buttonColor: Colors.cyanAccent,
       scaffoldBackgroundColor: Colors.yellowAccent,
      ),
home: new HomePage(),
    );
  }
}
