import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> allCovidInfo(http.Client httpClient) async {
  final httpResponse = await httpClient.get('https://corona.lmao.ninja/all');
  if (httpResponse.statusCode == 200) {
    final jsonBody = json.decode(httpResponse.body);
    return jsonBody;
  } else {
    throw Exception();
  }
}

Future<Map<String, dynamic>> countryCovidInfo(String country,http.Client httpClient) async {
  final httpResponse = await httpClient.get('https://corona.lmao.ninja/countries/$country');
  if (httpResponse.statusCode == 200) {
    final jsonBody = json.decode(httpResponse.body);
    return jsonBody;
  } else {
    throw Exception();
  }
}
