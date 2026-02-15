import 'package:flutter/material.dart';
import 'dart:async';
import 'log_screen.dart';


class splash  extends StatefulWidget {
  const splash ({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    // Création d'un délai de 3 secondes avant de changer de page
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const log()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Couleur de fond
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 300, // Ajustez la taille ici
              ),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(), // Petit cercle de chargement
          ],
        ),
      ),
    );
  }
}

