import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_signin_flutter/controllers/login_controller.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login", style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Stack(
          children: [
            const Image(image: AssetImage("assets/google_button.png"), height: 50),
            Positioned.fill(
                child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => ref.read(loginControllerProvider.notifier).signIn(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
