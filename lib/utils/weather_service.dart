import 'dart:convert';
import 'package:http/http.dart' as http;

const String API_KEY = "YOUR_WEATHER_API_KEY";

Future<String> getWeather(String location) async {
  final response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$API_KEY'));
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['weather'][0]['description'];
  } else {
    throw Exception("Failed to fetch weather data");
  }
}
