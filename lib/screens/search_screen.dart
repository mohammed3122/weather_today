import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_today0/cubits/weather_cubit/weather_main_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static String id = 'SearchScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Screen')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: TextField(
            onSubmitted: (city) {
              BlocProvider.of<WeatherMainCubit>(
                context,
              ).getCubit(cityName: city);

              Navigator.pop(context);
            },
            decoration: InputDecoration(
              hintText: 'ex : Alex',
              labelText: 'Enter City',
            ),
          ),
        ),
      ),
    );
  }
}
