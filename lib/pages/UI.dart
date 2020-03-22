import 'package:flutter/material.dart';
import 'package:novel_covid_api/widgets/begin.dart';

class UI extends StatefulWidget {
  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  final _controller = new TextEditingController();
  final _infoWidget = Begin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('NOVEL COVID API'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 15,
                    left: 5,
                    right: 5,
                  ),
                  child: TextField(
                    controller: this._controller,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: RaisedButton(
                          child: Text('Search'),
                          onPressed: () {},
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: RaisedButton(
                          child: Text('All Information'),
                          textColor: Colors.white,
                          onPressed: () {},
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    child: this._infoWidget,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
