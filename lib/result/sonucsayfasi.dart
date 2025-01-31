import 'package:flutter/material.dart';
import 'package:hicodechildrights/color.dart';
import 'package:lottie/lottie.dart';

class Sonucsayfasi extends StatefulWidget {
  const Sonucsayfasi({super.key});

  @override
  State<Sonucsayfasi> createState() => _SonucsayfasiState();
}

class _SonucsayfasiState extends State<Sonucsayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tebrikler!'),
        foregroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.primaryGradient,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Lottie.asset(
              'assets/images/animation.json',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 228,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "İnsani Yaşam Hakkı",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Çocukların sağlıklı, güvenli ve insanca yaşayabilecekleri koşullara sahip olması gerekir.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.1,
            child: Image.asset(
              'assets/images/kizframe.png',
              width: 80,
              height: 80,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset(
              'assets/images/zurafa.png',
              width: 120,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
