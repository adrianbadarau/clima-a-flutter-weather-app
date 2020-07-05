import 'dart:collection';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Networking {
  Future<LinkedHashMap<String,dynamic>> getWeatherData(String lat, String long) async {
    var resp =  await http.get('http://samples.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=439d4b804bc8187953eb36d2a8c26a02');
    return convert.jsonDecode(resp.body);
  }
}