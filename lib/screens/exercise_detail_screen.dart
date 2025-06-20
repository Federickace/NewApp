import 'package:flutter/material.dart';
import '../models/workout.dart';
import '../widgets/exercise_card.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final Workout workout;

  ExerciseDetailScreen({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(workout.name)),
      body: ListView.builder(
        itemCount: workout.exercises.length,
        itemBuilder: (ctx, index) {
          return ExerciseCard(exercise: workout.exercises[index]);
        },
      ),
    );
  }
}
