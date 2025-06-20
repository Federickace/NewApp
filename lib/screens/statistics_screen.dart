import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statistiche')),
      body: Center(
        child: Text(
          'Qui trovi le tue statistiche di allenamento.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
