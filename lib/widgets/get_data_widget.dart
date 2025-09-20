import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_today0/cubits/weather_cubit/weather_main_cubit.dart';
import 'package:weather_today0/models/weather_model.dart';
import 'package:weather_today0/services/get_color_theme.dart';

class GetDataWidget extends StatelessWidget {
  const GetDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel data = BlocProvider.of<WeatherMainCubit>(context).data!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getColorTheme(desc: data.desc),
            getColorTheme(desc: data.desc)[300]!,
            getColorTheme(desc: data.desc)[100]!,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            '${data.cityName} in ${data.country} ',
            style: TextStyle(fontSize: 40),
          ),
          Text(
            'Updated at ${data.date.hour}:${data.date.minute} ',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network('http:${data.img}'),
              Text('${data.avgTemp.round()}°C', style: TextStyle(fontSize: 35)),
              Column(
                children: [
                  Text(
                    'maxTemp : ${data.maxTemp.round()}°C',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'minTemp : ${data.minTemp.round()}°C',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('--- ${data.desc} ---', style: TextStyle(fontSize: 35)),
        ],
      ),
    );
  }
}
