import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:socialas/auth_gate.dart';

void main() async {
  await Supabase.initialize(url: 'your url', anonKey: 'your anon key');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AuthGate());
  }
}
