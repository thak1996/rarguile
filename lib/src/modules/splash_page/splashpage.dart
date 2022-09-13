import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/shared/app_colors.dart';

class SplashArt extends StatefulWidget {
  const SplashArt({super.key});

  @override
  State<SplashArt> createState() => _SplashArtState();
}

class _SplashArtState extends State<SplashArt> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) => Modular.to.navigate('/home/visitors/'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: primaryColor,
        ),
        child: AnimatedCard(
          direction: AnimatedCardDirection.top,
          duration: const Duration(seconds: 1),
          child: Center(
            child: Hero(
              tag: 'CapeloSplashArt',
              child: Image.asset('assets/images/capelo-splashart.png'),
            ),
          ),
        ),
      ),
    );
  }
}
