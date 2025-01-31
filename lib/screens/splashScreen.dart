import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hicodechildrights/screens/onBoardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    // Animasyon controller
    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Animasyon süresi
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    // 5 saniye sonra, Onboarding ekranına geçiş
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });

    // Animasyonu başlatıyoruz
    _controller.forward();
  }

  @override
  void dispose() {
    // Animasyon kontrolcüsünü temizleyin
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: _opacityAnimation,
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', width: 300, height: 250),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
