import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key, required this.weather}) : super(key: key);
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        getThemeColor(weatherModel.weatherCondition),
        getThemeColor(weatherModel.weatherCondition)[300]!,
        getThemeColor(weatherModel.weatherCondition)[50]!,
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CustomText(weatherModel: weatherModel),
            Text(
              weatherModel.cityName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Text(
              "updated at : ${weatherModel.date.hour}:${weatherModel.date.minute}",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https:${weatherModel.iamge}",
                  height: 100,
                  width: 100,
                ),
                Text(
                  weatherModel.temp.round().toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Maxtemp: ${weatherModel.maxTemp.round()}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Mintemp: ${weatherModel.minTemp.round()}",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              weatherModel.weatherCondition,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required WeatherModel weatherModel,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      BlocProvider.of<GetWeatherCubit>(context).weatherModel!.cityName,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }
}

abstract class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
  });

  // @override
  // Widget build(BuildContext context) {
  //   return const Text(
  //     "18",
  //     style: TextStyle(
  //       fontWeight: FontWeight.bold,
  //       fontSize: 32,
  //     ),
  //   );
  // }
}

class CustomWeatherConditionText extends StatelessWidget {
  const CustomWeatherConditionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Ligh Rain",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }
}
