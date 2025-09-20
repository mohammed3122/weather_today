import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_today0/cubits/weather_cubit/weather_states.dart';
import 'package:weather_today0/models/weather_model.dart';
import 'package:weather_today0/services/api_data.dart';

class WeatherMainCubit extends Cubit<WeatherStates> {
  WeatherMainCubit() : super(InitialWeatherState());
  WeatherModel? data;
  getCubit({required String cityName}) async {
    emit(LoadingState());
    await Future.delayed(Duration(seconds: 1));
    try {
      data = await ApiData().getApidata(cityName: cityName);
      emit(GetWeatherState());
    } on Exception catch (e) {
      log(e.toString());
      if (e.toString() == 'Exception: No matching location found.') {
        emit(ErrorCityNameState());
      } else if (e.toString() == 'Exception: No NetWork') {
        emit(ErrorNetWorkState());
      } else if (e.toString() == 'Exception: Parameter q is missing.') {
        emit(NoEnterCityState());
      }
    }
  }
}
