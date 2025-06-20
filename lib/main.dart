import 'package:flutter/material.dart';
import 'screens/offers_screen.dart';
import 'screens/workout_screen.dart';
import 'screens/statistics_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Palestra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Lista di schermate per il BottomNavigationBar
  final List<Widget> _pages = [
    OffersScreen(),       // Offerte della palestra
    WorkoutScreen(),      // Schede e Workout
    StatisticsScreen(),   // Statistiche
    ProfileScreen(),      // Profilo utente
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Palestra')),
      body: _pages[_selectedIndex],  // Mostra la pagina selezionata
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,  // Imposta il colore di sfondo della barra in nero
        selectedItemColor: Colors.black,  // Colore del testo e icona selezionata (bianco)
        unselectedItemColor: Colors.grey,  // Colore del testo e icona non selezionata (grigio)
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Offerte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Schede',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Statistiche',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profilo',
          ),
        ],
      ),
    );
  }
}
