import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:library_app/details.dart';
import 'package:library_app/home.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("LIBRARY APP"),
        ),
        body: Home(),
      ),

    );
  }
}
