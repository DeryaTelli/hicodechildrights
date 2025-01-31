import 'package:flutter/material.dart';
import 'package:hicodechildrights/color.dart';
import 'package:hicodechildrights/screens/buttons.dart';
import 'package:hicodechildrights/screens/matchingGameSuccessScreen.dart.dart';

class MatchingGameScreen extends StatefulWidget {
  const MatchingGameScreen({super.key});

  @override
  State<MatchingGameScreen> createState() => _MatchingGameScreenState();
}

class _MatchingGameScreenState extends State<MatchingGameScreen> {
  List<bool> isFlipped = List.generate(6, (index) => false);
  List<bool> isMatched = List.generate(6, (index) => false);
  List<Map<String, String>> cardData = [
    {"image": 'assets/images/education.png', "text": "Eğitim Hakkı"},
    {"image": 'assets/images/education.png', "text": "Eğitim Hakkı"},
    {"image": 'assets/images/product.png', "text": "Koruma Hakkı"},
    {"image": 'assets/images/product.png', "text": "Koruma Hakkı"},
    {"image": 'assets/images/health.png', "text": "Sağlık Hakkı"},
    {"image": 'assets/images/health.png', "text": "Sağlık Hakkı"},
  ];

  @override
  void initState() {
    super.initState();
    cardData.shuffle();
  }

  void flipCard(int index) {
    if (isMatched[index] || isFlipped[index]) {
      return;
    }

    setState(() {
      isFlipped[index] = true;
    });

    List<int> flippedIndexes = [];
    for (int i = 0; i < isFlipped.length; i++) {
      if (isFlipped[i] && !isMatched[i]) {
        flippedIndexes.add(i);
      }
    }

    if (flippedIndexes.length == 2) {
      int first = flippedIndexes[0];
      int second = flippedIndexes[1];

      if (cardData[first]["image"] == cardData[second]["image"]) {
        setState(() {
          isMatched[first] = true;
          isMatched[second] = true;
        });
      } else {
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            isFlipped[first] = false;
            isFlipped[second] = false;
          });
        });
      }
    }
  }

  bool checkGameCompleted() {
    return isMatched.every((matched) => matched);
  }

  void onFinishButtonPressed() {
    if (checkGameCompleted()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MatchingGameSuccesScreen(),
        ),
      );
    }
  }

  void onClearButtonPressed() {
    setState(() {
      isFlipped = List.generate(6, (index) => false);
      isMatched = List.generate(6, (index) => false);
      cardData.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Eşleştirme',
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.primaryGradient,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          double hight = constraints.maxHeight;
          double cardSize = (width < 500)
              ? width / 3.5 // Mobil için ayar
              : width / 4; // Büyük ekran için ayar

          double birdSize = (width < 500)
              ? width / 2.5 // Mobil için ayar
              : width / 4;

          return Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: cardSize * 2.5,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: width < 500 ? 0.9 : 1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: cardData.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => flipCard(index),
                          child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 300),
                            child: isFlipped[index]
                                ? Container(
                                    width: cardSize,
                                    height: cardSize,
                                    color: Color(0xFF4EE292),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          cardData[index]["image"]!,
                                          key: ValueKey(index),
                                          width: cardSize * 0.8,
                                          height: cardSize * 0.8,
                                        ),
                                        Text(
                                          cardData[index]["text"]!,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(
                                    width: cardSize,
                                    height: cardSize,
                                    color: Color(0xFF4EE292),
                                    child: Center(
                                      child: Image.asset(
                                          "assets/images/Vector.png"),
                                    ),
                                  ),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: GradientButton1(
                          width: width * 0.25,
                          text: "Bitir",
                          onPressed: onFinishButtonPressed,
                          borderRadius: 12,
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: GradientButton1(
                          width: width * 0.25,
                          text: "Temizle",
                          onPressed: onClearButtonPressed,
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: hight * 0.02,
                  )
                ],
              ),
              Positioned(
                bottom: hight * 0.02,
                right: width * 0.02,
                child: Image.asset(
                  'assets/images/bird.png',
                  width: birdSize,
                  height: birdSize,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
