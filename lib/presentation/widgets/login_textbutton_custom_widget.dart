import 'package:farmer_eats/presentation/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class LoginTextButtonCustomWidget extends StatelessWidget {
  const LoginTextButtonCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const LoginScreen())),
        child: const Text(
          "Login",
          style: TextStyle(decoration: TextDecoration.underline),
        ));
  }
}