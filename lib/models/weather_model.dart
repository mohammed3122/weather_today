class WeatherModel {
  final String cityName;
  final String? country;
  final DateTime date;
  final String img;
  final double avgTemp;
  final double maxTemp;
  final double minTemp;
  final String desc;

  WeatherModel({
    required this.cityName,
    this.country,
    required this.date,
    required this.img,
    required this.avgTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.desc,
  });

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      country: json['location']['country'],
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      img: json['current']['condition']['icon'],
      avgTemp: json['current']['temp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      desc: json['current']['condition']['text'],
    );
  }
}
