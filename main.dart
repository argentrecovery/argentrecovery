
import 'package:flutter/material.dart';

void main() {
  runApp(const ArgentApp());
}

class ArgentApp extends StatelessWidget {
  const ArgentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Argent Recovery',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Argent Recovery'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'طلبات التوصيل',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          deliveryCard('طلب #1024', 'قيد التوصيل'),
          deliveryCard('طلب #1025', 'تم الاستلام'),
        ],
      ),
    );
  }

  Widget deliveryCard(String title, String status) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.delivery_dining),
        title: Text(title),
        subtitle: Text(status),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
