import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_today0/cubits/weather_cubit/weather_main_cubit.dart';
import 'package:weather_today0/cubits/weather_cubit/weather_states.dart';
import 'package:weather_today0/screens/home_screen.dart';
import 'package:weather_today0/screens/search_screen.dart';
import 'package:weather_today0/services/get_color_theme.dart';
import 'package:weather_today0/theme/app_theme.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherMainCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<WeatherMainCubit, WeatherStates>(
          builder: (context, state) {
            // ignore: non_constant_identifier_names
            MaterialColor KMainColor;

            if (state is ErrorCityNameState) {
              KMainColor = Colors.yellow;
            } else if (state is ErrorNetWorkState) {
              KMainColor = Colors.red;
            } else if (state is NoEnterCityState) {
              KMainColor = Colors.indigo;
            } else {
              KMainColor = getColorTheme(
                desc: BlocProvider.of<WeatherMainCubit>(context).data?.desc,
              );
            }
            return MaterialApp(
              theme: AppTheme.lightTheme(KMainColor),
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
              routes: {SearchScreen.id: (context) => SearchScreen()},
            );
          },
        ),
      ),
    );
  }
}
