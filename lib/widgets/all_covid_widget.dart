import 'package:flutter/material.dart';

class AllCovidWidget extends StatelessWidget {
  Map<String, dynamic> _allCovidInfo;

  AllCovidWidget(Map<String, dynamic> allCovidInfo) {
    this._allCovidInfo = allCovidInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 20),
      height: (MediaQuery.of(context).size.height) / 2,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'All Cases : ' + this._allCovidInfo['cases'].toString(),
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
            ),
            Center(
              child: Text(
                'All Deaths : ' + this._allCovidInfo['deaths'].toString(),
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
            ),
            Center(
              child: Text(
                'All Recovered : ' + this._allCovidInfo['recovered'].toString(),
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
            ),
            Center(
              child: Text(
                'All Active Cases : ' +
                    (this._allCovidInfo['cases'] -
                            this._allCovidInfo['deaths'] -
                            this._allCovidInfo['recovered'])
                        .toString(),
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
