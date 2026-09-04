import 'package:flutter/material.dart';
import '../../widgets/streak_counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double courseProgress = 0.65;
    const String currentCourseTitle = "Flutter Basics";
    final List<String> recentBadges = ["🐍 Python I", "🎨 UI Design", "🔥 7-Day Streak"];
    const String nextChallenge = "Quiz: State Management";

    return Scaffold(
      appBar: AppBar(title: const Text("Digimytch")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Your Progress",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: courseProgress,
              minHeight: 10,
              borderRadius: BorderRadius.circular(8),
            ),
            Text("${(courseProgress * 100).toInt()}% complete"),
            const SizedBox(height: 12),
            const StreakCounter(streakDays: 7), // 👈 zdit hnaya
            const SizedBox(height: 24),

            Card(
              child: ListTile(
                leading: const Icon(Icons.play_circle_fill, size: 36, color: Colors.blue),
                title: const Text("Current Course"),
                subtitle: const Text(currentCourseTitle),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Continue"),
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text("Recent Badges",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: recentBadges.map((badge) => Chip(label: Text(badge))).toList(),
            ),
            const SizedBox(height: 24),

            Card(
              color: Colors.amber.shade50,
              child: ListTile(
                leading: const Icon(Icons.emoji_events, color: Colors.orange),
                title: const Text("Next Challenge"),
                subtitle: const Text(nextChallenge),
              ),
            ),
          ],
        ),
      ),
    );
  }
}