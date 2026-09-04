import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mockLeaderboard = [
      {"rank": 1, "name": "Amine", "score": 980},
      {"rank": 2, "name": "Sarra", "score": 940},
      {"rank": 3, "name": "Wiem", "score": 910},
      {"rank": 4, "name": "Youssef", "score": 870},
      {"rank": 5, "name": "Lina", "score": 820},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Leaderboard")),
      body: ListView.builder(
        itemCount: mockLeaderboard.length,
        itemBuilder: (context, index) {
          final entry = mockLeaderboard[index];
          return ListTile(
            leading: CircleAvatar(child: Text("${entry['rank']}")),
            title: Text(entry['name'] as String),
            trailing: Text(
              "${entry['score']} XP",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}