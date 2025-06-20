import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Il tuo Profilo')),
      body: Center(
        child: Text(
          'Qui trovi i dettagli del tuo profilo.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
