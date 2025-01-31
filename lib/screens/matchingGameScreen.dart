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
    if (isMatched[index] || isFlipped[index]) return;

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
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MatchingGameSuccesScreen()));
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
        title: const Text('Eşleştirme'),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 1.0,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(20),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.0,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemCount: cardData.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => flipCard(index),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF4EE292),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: isFlipped[index]
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            cardData[index]["image"]!,
                                            width: 60,
                                            height: 60,
                                          ),
                                          Text(
                                            cardData[index]["text"]!,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      )
                                    : Image.asset("assets/images/Vector.png"),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GradientButton1(
                          width: 100,
                          text: "Bitir",
                          onPressed: onFinishButtonPressed,
                          borderRadius: 12,
                        ),
                        SizedBox(width: 10),
                        GradientButton1(
                          width: 100,
                          text: "Temizle",
                          onPressed: onClearButtonPressed,
                          borderRadius: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/bird.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
