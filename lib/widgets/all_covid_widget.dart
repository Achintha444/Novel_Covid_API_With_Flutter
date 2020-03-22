import 'package:flutter/material.dart';

class AllCovidWidget extends StatelessWidget {
  Map<String, dynamic> _allCovidInfo;

  AllCovidWidget(Map<String, dynamic> allCovidInfo) {
    this._allCovidInfo = allCovidInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    (this._allCovidInfo['cases'].getCases -
                            this._allCovidInfo['deaths'].getDeaths -
                            this._allCovidInfo['recovered'].getRecovered)
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
