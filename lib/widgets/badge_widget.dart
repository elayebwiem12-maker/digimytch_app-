import 'package:flutter/material.dart';

class AnimatedBadge extends StatefulWidget {
  final String emoji;
  final String label;

  const AnimatedBadge({
    super.key,
    required this.emoji,
    required this.label,
  });

  @override
  State<AnimatedBadge> createState() => _AnimatedBadgeState();
}

class _AnimatedBadgeState extends State<AnimatedBadge>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _scale = CurvedAnimation(parent: _controller, curve: Curves.elasticOut);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scale,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 32,
            child: Text(widget.emoji, style: const TextStyle(fontSize: 28)),
          ),
          const SizedBox(height: 4),
          Text(widget.label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}