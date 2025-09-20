import 'package:flutter/material.dart';

class NoEnterCityWidget extends StatelessWidget {
  const NoEnterCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.indigo,
            Colors.indigo.shade300,
            Colors.indigo.shade100,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.warning_rounded, color: Colors.white, size: 150),
          Text(
            textAlign: TextAlign.center,
            "Hey , You don't Enter a city ! ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
