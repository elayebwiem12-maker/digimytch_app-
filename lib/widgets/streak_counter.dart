import 'package:flutter/material.dart';

class StreakCounter extends StatelessWidget {
  final int streakDays;

  const StreakCounter({super.key, required this.streakDays});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.local_fire_department, color: Colors.orange, size: 28),
        const SizedBox(width: 4),
        Text(
          "$streakDays day streak",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }
}