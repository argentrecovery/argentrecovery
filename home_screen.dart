import 'package:flutter/material.dart';
import '../widgets/order_card.dart';
import 'tracking_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('طلبات التوصيل'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          OrderCard(
            orderId: '#9001',
            status: 'السائق يتحرك إليك',
            onTrack: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const TrackingScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}