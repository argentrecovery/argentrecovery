import 'package:flutter/material.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التتبع المباشر'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.map_outlined, size: 120),
            SizedBox(height: 20),
            Text(
              'سيتم ربط Google Maps هنا',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text('Live Driver Tracking'),
          ],
        ),
      ),
    );
  }
}