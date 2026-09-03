import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final List<String> skillTags;

  const CourseDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.skillTags,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(description)),
    );
  }
}