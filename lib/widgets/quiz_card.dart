import 'package:flutter/material.dart';

class QuizCard extends StatefulWidget {
  final String question;
  final List<String> options;
  final int correctIndex;
  final void Function(bool isCorrect) onAnswerSelected;

  const QuizCard({
    super.key,
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.onAnswerSelected,
  });

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  int? _selectedIndex;
  bool _submitted = false;

  void _submit() {
    if (_selectedIndex == null) return;
    setState(() => _submitted = true);
    widget.onAnswerSelected(_selectedIndex == widget.correctIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.question,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...List.generate(widget.options.length, (index) {
              final isCorrectOption = index == widget.correctIndex;
              Color? tileColor;
              if (_submitted) {
                if (isCorrectOption) tileColor = Colors.green.shade100;
                else if (index == _selectedIndex) tileColor = Colors.red.shade100;
              }
              return RadioListTile<int>(
                value: index,
                groupValue: _selectedIndex,
                title: Text(widget.options[index]),
                tileColor: tileColor,
                onChanged: _submitted
                    ? null
                    : (val) => setState(() => _selectedIndex = val),
              );
            }),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _submitted ? null : _submit,
              child: Text(_submitted ? "Submitted" : "Submit"),
            ),
          ],
        ),
      ),
    );
  }
}