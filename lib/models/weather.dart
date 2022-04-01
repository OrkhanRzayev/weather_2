import 'package:http/http.dart' as http;
/*
{
"coord": {
"lon": 139,
"lat": 35
},
"weather": [
{
"description": "overcast clouds",
}
],
"main": {
"temp": 287.21,
"pressure": 1005,
"humidity": 89
},
"wind": {
"speed": 0.45,
},
"clouds": {
"all": 100
},
"dt": 1648368656,
"sys": {
"type": 2,
"id": 2019346,
"country": "JP",
"sunrise": 1648327114,
"sunset": 1648371617
},
"timezone": 32400,
"id": 1851632,
"name": "Shuzenji",
"cod": 200
}  
*/

class Data {
  void getWeather(String city) async {
    // https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    final queryParameters = {
      'q': city,
      'appid': 'ef644f9b6a057dc1863e125e24a0abc7'
    };

    final uri = Uri.https('api.openweathermap.org', 'data/2.5/weather');

    final response = await http.get(uri);
  }
}
