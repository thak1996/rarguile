import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/login_page/controller/login_controller.dart';
import 'package:rarguile/src/login/model/user_model.dart';
import 'package:rarguile/src/service/http_service.dart';
import 'package:rarguile/src/service/shared_preferences_service.dart';
import 'package:rarguile/src/shared/app_colors.dart';

class SplashArt extends StatefulWidget {
  SplashArt({super.key});

  @override
  State<SplashArt> createState() => _SplashArtState();
}

class _SplashArtState extends State<SplashArt> {
  final service = HttpService();
  authLogin() {
    SharedPreferencesService.readString().then((value) {
      LoginController.user = value;

      if (LoginController.user != null) {
        HttpService.token = User.fromJson(LoginController.user!).accessToken;
        Modular.to.navigate('/home/users/');
      } else {
        Modular.to.navigate('/login/');
      }
    });
  }

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) => authLogin(),
    );
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedCard(
              direction: AnimatedCardDirection.top,
              duration: const Duration(seconds: 1),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
