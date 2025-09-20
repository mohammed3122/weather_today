import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_today0/cubits/weather_cubit/weather_main_cubit.dart';
import 'package:weather_today0/cubits/weather_cubit/weather_states.dart';
import 'package:weather_today0/screens/search_screen.dart';
import 'package:weather_today0/services/get_color_theme.dart';
import 'package:weather_today0/widgets/err_city_widget.dart';
import 'package:weather_today0/widgets/err_network_widget.dart';
import 'package:weather_today0/widgets/get_data_widget.dart';
import 'package:weather_today0/widgets/no_data_widget.dart';
import 'package:weather_today0/widgets/no_enter_city.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Today'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SearchScreen.id);
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<WeatherMainCubit, WeatherStates>(
        builder: (context, state) {
          if (state is GetWeatherState) {
            return GetDataWidget();
          } else if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(
                color: getColorTheme(
                  desc: BlocProvider.of<WeatherMainCubit>(context).data?.desc,
                ),
              ),
            );
          } else if (state is InitialWeatherState) {
            return NoDataWidget();
          } else if (state is ErrorCityNameState) {
            return ErrorCityWidget();
          } else if (state is ErrorNetWorkState) {
            return ErrorNetWorkWidget();
          } else {
            return NoEnterCityWidget();
          }
        },
      ),
    );
  }
}
