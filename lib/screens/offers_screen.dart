import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart'; // Keep this import

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Offerte della Palestra')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carousel con immagini
            CarouselSlider(
              options: CarouselOptions(height: 200, autoPlay: true),
              items: [
                'assets/images/palestra1.jpg',
                'assets/images/palestra2.jpg',
                'assets/images/palestra3.jpg',
              ].map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            // Informazioni sulla palestra
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Benvenuto nella nostra palestra! Offriamo corsi per tutti i livelli e un ambiente accogliente.',
                style: TextStyle(fontSize: 16),
              ),
            ),

            // Calendario dei giorni festivi
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExpansionTile(
                title: Text('Calendario dei giorni festivi'),
                children: [
                  ListTile(
                    title: Text('1 Gennaio: Chiuso'),
                  ),
                  ListTile(
                    title: Text('25 Aprile: Aperto con orario ridotto'),
                  ),
                  ListTile(
                    title: Text('15 Agosto: Chiuso'),
                  ),
                ],
              ),
            ),

            // Elenco dei corsi disponibili
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Corsi Disponibili:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  ListTile(
                    leading: Icon(Icons.fitness_center),
                    title: Text('Yoga'),
                    subtitle: Text('Lunedì e Mercoledì, 18:00 - 19:00'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fitness_center),
                    title: Text('Pilates'),
                    subtitle: Text('Martedì e Giovedì, 19:00 - 20:00'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fitness_center),
                    title: Text('Crossfit'),
                    subtitle: Text('Venerdì, 18:00 - 19:30'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
