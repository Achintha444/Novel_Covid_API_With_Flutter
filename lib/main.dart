import 'package:flutter/material.dart';
import 'package:novel_covid_api/pages/UI.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff265699),
        primarySwatch: Colors.blue,
      ),
      home: UI(),
    );
  }
}
