import 'package:flutter/material.dart';
import 'package:socialas/auth_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    final currentemail = _authService.getcurrentuseremail();
    return Scaffold(
      appBar: AppBar(
        title: const Text('profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await _authService.signOut();
            },
          ),
        ],
      ),
      body: Center(child: Text('Welcome, ${currentemail.toString()}')),
    );
  }
}
