import 'package:novel_covid_api/covid_info.dart';
import 'package:http/http.dart' as http;

void main() async {
  final String country = 'Sri Lanka';
  final resposeAll = await allCovidInfo(http.Client());
  final responseCountry = await countryCovidInfo(country, http.Client());

  print(resposeAll);
  print(responseCountry);
}
