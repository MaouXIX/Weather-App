import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    Uri url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=cavite&appid=8f4403e75a5883b23e1922d8d7c92a24");
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}