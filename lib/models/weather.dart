/*

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
},
"dt": 1648368656,
},
"name": "Shuzenji",
"cod": 200
}  
*/

class Weather {
  final String? cityName;
  final String? description;
  final String? icon;
  final double? temperature;
  final int? humidity;
  final double? wind;

  Weather(
      {this.description,
      this.icon,
      this.humidity,
      this.wind,
      this.temperature,
      this.cityName});

  factory Weather.fromJson(Map<String, dynamic> json) {
    // final cityName = json['name'];
    // final temperature = json['main']['temp'];
    // final icon = json['weather'][0]['icon'];
    // final description = json['weather'][0]['description'];
    // final humidity = json['main']['humidity'];
    // final wind = json['wind']['speed'];
    return Weather(
        cityName: json['name'],
        temperature: json['main']['temp'],
        description: json['weather'][0]['description'],
        humidity: json['main']['humidity'],
        wind: json['wind']['speed'],
        icon: '');
  }
  @override
  String toString() {
    return 'City Name: $cityName\nTemperature: $temperature';
  }
}
