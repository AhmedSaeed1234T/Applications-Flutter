class WeatherModel {
  final String cityName;
  final DateTime date;
  final String iamge;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;
  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.iamge,
      required this.maxTemp,
      required this.minTemp,
      required this.temp,
      required this.weatherCondition});
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        iamge: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        cityName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
            ['text']);
  }
}
