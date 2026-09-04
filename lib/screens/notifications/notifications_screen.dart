import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        "icon": Icons.emoji_events,
        "title": "New badge unlocked!",
        "subtitle": "UI Design Level 1"
      },
      {
        "icon": Icons.book,
        "title": "Course reminder",
        "subtitle": "Continue Flutter Basics"
      },
      {
        "icon": Icons.local_fire_department,
        "title": "Streak milestone",
        "subtitle": "7 days in a row!"
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];
          return ListTile(
            leading: Icon(item['icon'] as IconData, color: Colors.blue),
            title: Text(item['title'] as String),
            subtitle: Text(item['subtitle'] as String),
          );
        },
      ),
    );
  }
}