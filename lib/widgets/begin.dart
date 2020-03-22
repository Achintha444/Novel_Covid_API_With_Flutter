import 'package:flutter/material.dart';

class Begin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 20),
      height: (MediaQuery.of(context).size.height) / 2,
      child: Center(
        child: SingleChildScrollView(
          child: Text(
            'Start Searching',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
