import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'تسجيل الدخول',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'رقم الهاتف',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                );
              },
              child: const Text('إرسال OTP'),
            ),
          ],
        ),
      ),
    );
  }
}