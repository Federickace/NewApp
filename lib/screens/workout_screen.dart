import 'package:flutter/material.dart';
import '../models/exercise.dart';
import '../models/workout.dart';
import '../widgets/exercise_card.dart';
import 'exercise_detail_screen.dart';

class WorkoutScreen extends StatelessWidget {
  final List<Workout> workouts = [
    Workout(
      name: 'Scheda 1',
      exercises: [
        Exercise(name: 'Panca piana', description: 'Esercizio per il petto', repetitions: '3 serie da 10'),
        Exercise(name: 'Squat', description: 'Esercizio per le gambe', repetitions: '4 serie da 12'),
        Exercise(name: 'Rematore', description: 'Esercizio per la schiena', repetitions: '3 serie da 8'),
      ],
    ),
    Workout(
      name: 'Scheda 2',
      exercises: [
        Exercise(name: 'Stacco da terra', description: 'Esercizio per la schiena', repetitions: '3 serie da 6'),
        Exercise(name: 'Leg Press', description: 'Esercizio per le gambe', repetitions: '4 serie da 10'),
        Exercise(name: 'Curl con manubri', description: 'Esercizio per le braccia', repetitions: '3 serie da 12'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Le tue Schede e Workout')),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (ctx, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(workouts[index].name),
              subtitle: Text('Scheda di allenamento'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseDetailScreen(workout: workouts[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
