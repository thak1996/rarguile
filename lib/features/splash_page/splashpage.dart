import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/shared/app_colors.dart';

class SplashArt extends StatefulWidget {
  SplashArt({super.key});

  @override
  State<SplashArt> createState() => _SplashArtState();
}

class _SplashArtState extends State<SplashArt> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
    ).then((value) => Modular.to.navigate('/login/'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: primaryColor,
        ),
        child: AnimatedCard(
          direction: AnimatedCardDirection.top,
          duration: const Duration(seconds: 1),
          child: Positioned(
            child: Center(
              child: Hero(
                tag: 'CapeloSplashArt',
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/capelo-splashart.png')
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
