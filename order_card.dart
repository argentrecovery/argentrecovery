import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {

  final String orderId;
  final String status;
  final VoidCallback onTrack;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.status,
    required this.onTrack,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.local_shipping),
        title: Text(orderId),
        subtitle: Text(status),
        trailing: ElevatedButton(
          onPressed: onTrack,
          child: const Text('تتبع'),
        ),
      ),
    );
  }
}