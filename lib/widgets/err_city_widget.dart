import 'package:flutter/material.dart';

class ErrorCityWidget extends StatelessWidget {
  const ErrorCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.yellow,
            Colors.yellow.shade300,
            Colors.yellow.shade100,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info, color: Colors.white, size: 150),
          Text(
            textAlign: TextAlign.center,
            'Please.. \nEnter a Correct City Name ! ',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
