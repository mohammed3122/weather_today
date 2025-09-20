import 'package:flutter/material.dart';

MaterialColor getColorTheme({required String? desc}) {
  if (desc == null) return Colors.grey;

  switch (desc) {
    case 'Clear':
      return Colors.blue; // سماوي واضح

    case 'Partly cloudy':
      return Colors.cyan; // لبني فاتح

    case 'Cloudy':
      return Colors.indigo; // أزرق غامق

    case 'Overcast':
      return Colors.blueGrey; // رمادي مزرق

    case 'Mist':
      return Colors.teal; // أخضر مزرق

    case 'Patchy rain possible':
      return Colors.lightBlue; // أزرق فاتح

    case 'Patchy snow possible':
      return Colors.deepPurple; // بنفسجي

    case 'Patchy sleet possible':
      return Colors.deepOrange; // برتقالي غامق

    case 'Patchy freezing drizzle possible':
      return Colors.red; // أحمر

    case 'Thundery outbreaks possible':
      return Colors.deepPurple; // بنفسجي غامق

    case 'Blowing snow':
      return Colors.amber; // أصفر ذهبي

    case 'Blizzard':
      return Colors.pink; // وردي

    case 'Fog':
      return Colors.lime; // أخضر ليموني

    case 'Freezing fog':
      return Colors.lightGreen; // أخضر فاتح

    case 'Patchy light drizzle':
      return Colors.orange; // برتقالي

    case 'Light drizzle':
      return Colors.brown; // بني

    case 'Freezing drizzle':
      return Colors.cyan; // لبني

    case 'Heavy freezing drizzle':
      return Colors.indigo; // كحلي

    case 'Patchy light rain':
      return Colors.purple; // بنفسجي

    case 'Light rain':
      return Colors.green; // أخضر

    case 'Moderate rain at times':
      return Colors.blueGrey; // رمادي مزرق

    case 'Moderate rain':
      return Colors.deepPurple; // بنفسجي غامق

    case 'Heavy rain at times':
      return Colors.red; // أحمر

    case 'Heavy rain':
      return Colors.orange; // برتقالي

    case 'Light freezing rain':
      return Colors.pink; // وردي

    case 'Moderate or heavy freezing rain':
      return Colors.teal; // أخضر مزرق

    case 'Light sleet':
      return Colors.amber; // أصفر

    case 'Moderate or heavy sleet':
      return Colors.blue; // أزرق

    case 'Patchy light snow':
      return Colors.indigo; // كحلي

    case 'Light snow':
      return Colors.cyan; // لبني

    case 'Patchy moderate snow':
      return Colors.green; // أخضر

    case 'Moderate snow':
      return Colors.deepOrange; // برتقالي غامق

    case 'Patchy heavy snow':
      return Colors.purple; // بنفسجي

    case 'Heavy snow':
      return Colors.red; // أحمر

    case 'Ice pellets':
      return Colors.blueGrey; // رمادي

    case 'Light rain shower':
      return Colors.lime; // أخضر فاتح

    case 'Moderate or heavy rain shower':
      return Colors.pink; // وردي

    case 'Torrential rain shower':
      return Colors.brown; // بني

    case 'Light sleet showers':
      return Colors.lightGreen; // أخضر فاتح

    case 'Moderate or heavy sleet showers':
      return Colors.indigo; // كحلي

    case 'Light snow showers':
      return Colors.cyan; // لبني

    case 'Moderate or heavy snow showers':
      return Colors.deepPurple; // بنفسجي

    case 'Light showers of ice pellets':
      return Colors.teal; // أخضر مزرق

    case 'Moderate or heavy showers of ice pellets':
      return Colors.orange; // برتقالي

    case 'Patchy light rain with thunder':
      return Colors.red; // أحمر

    case 'Moderate or heavy rain with thunder':
      return Colors.blue; // أزرق

    case 'Patchy light snow with thunder':
      return Colors.green; // أخضر

    case 'Moderate or heavy snow with thunder':
      return Colors.purple; // بنفسجي

    default:
      return Colors.grey; // لو مش موجود
  }
}
