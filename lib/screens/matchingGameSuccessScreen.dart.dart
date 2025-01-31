import 'package:flutter/material.dart';
import 'package:hicodechildrights/constants/colors.dart';
import 'package:lottie/lottie.dart';

class MatchingGameSuccesScreen extends StatefulWidget {
  const MatchingGameSuccesScreen({super.key});

  @override
  State<MatchingGameSuccesScreen> createState() =>
      _MatchingGameSuccesScreenState();
}

class _MatchingGameSuccesScreenState extends State<MatchingGameSuccesScreen> {
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
              "assets/images/animation.json",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 250,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF4EE292),
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
                  SizedBox(height: 10),
                  Text(
                    "Oyun ve Dinlenme Hakkı",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      "Çocuklar oyun oynama, dinlenme ve eğlenme hakkını özgürce kullanabilirler.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.18,
            left: MediaQuery.of(context).size.width * 0.1,
            child: Image.asset(
              'assets/images/girl.png',
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset(
              'assets/images/bird2.png',
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
