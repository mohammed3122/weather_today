import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_today0/cubits/weather_cubit/weather_main_cubit.dart';
import 'package:weather_today0/services/get_color_theme.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getColorTheme(
              desc: BlocProvider.of<WeatherMainCubit>(context).data?.desc,
            ),
            getColorTheme(
              desc: BlocProvider.of<WeatherMainCubit>(context).data?.desc,
            )[300]!,
            getColorTheme(
              desc: BlocProvider.of<WeatherMainCubit>(context).data?.desc,
            )[100]!,
          ],
        ),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          'There is No Weather Now 😌\n Start Searching 🔎',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
    );
  }
}
