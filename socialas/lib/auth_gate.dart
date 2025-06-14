import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:socialas/home_page.dart';
import 'package:socialas/login_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: const Center(child: CircularProgressIndicator()),
          );
        }
        final session = (snapshot.hasData) ? snapshot.data!.session : null;
        if (session != null) {
          return HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}
