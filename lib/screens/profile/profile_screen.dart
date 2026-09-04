import 'package:flutter/material.dart';
import '../../widgets/progress_ring.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ProgressRing(progress: 0.65),
            SizedBox(height: 12),
            Text("Overall course completion",
                style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}