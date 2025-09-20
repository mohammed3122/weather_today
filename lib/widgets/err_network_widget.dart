import 'package:flutter/material.dart';

class ErrorNetWorkWidget extends StatelessWidget {
  const ErrorNetWorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.red, Colors.red.shade300, Colors.red.shade100],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.wifi_off, color: Colors.white, size: 150),
          Text(
            textAlign: TextAlign.center,
            'Check Your NetWork',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
