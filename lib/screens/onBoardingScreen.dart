import 'package:flutter/material.dart';
import 'package:hicodechildrights/log_in.dart';
import 'package:hicodechildrights/screens/buttons.dart';
import 'package:hicodechildrights/screens/matchingGameScreen.dart';
import 'package:hicodechildrights/screens/onBoarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/rb_128875.png",
      "title": "Oku",
      "description": "Haklarını öğren, kendini geliştir!"
    },
    {
      "image": "assets/images/rb_100411.png",
      "title": "Keşfet",
      "description": "Yeni bilgilerle dünyanı genişlet!"
    },
    {
      "image": "assets/images/rb_95363.png",
      "title": "Paylaş",
      "description": "Öğrendiklerini arkadaşlarınla paylaş!"
    },
    {
      "image": "assets/images/rb_55508.png",
      "title": "Eğlen",
      "description": "Öğrenirken keyif al, oyunlarla haklarını keşfet!"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          double height = constraints.maxHeight;

          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: controller,
                      itemCount: onboardingData.length,
                      onPageChanged: (index) {
                        setState(() => _currentPage = index);
                      },
                      itemBuilder: (context, index) {
                        return OnBoarding(
                          image: onboardingData[index]["image"]!,
                          title: onboardingData[index]["title"]!,
                          description: onboardingData[index]["description"]!,
                          controller: controller,
                          showSmoothIndicator:
                              index != onboardingData.length - 1,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  _currentPage == onboardingData.length - 1
                      ? FittedBox(
                          fit: BoxFit.scaleDown,
                          child: GradientButton1(
                            text: "Keşfetmeye Başla",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogInPage()));
                            },
                            borderRadius: 18,
                            width: width * 0.5,
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            if (_currentPage > 0)
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: SizedBox(
                                  width: width * 0.3,
                                  height: height * 0.06,
                                  child: GradientButton2(
                                    onPressed: () {
                                      controller.previousPage(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeIn);
                                    },
                                    isForwardButton: false,
                                  ),
                                ),
                              ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: _currentPage == 0
                                  ? FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: SizedBox(
                                        width: width * 0.3,
                                        height: height * 0.06,
                                        child: GradientButton2(
                                          onPressed: () {
                                            controller.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeIn);
                                          },
                                          isForwardButton: true,
                                        ),
                                      ),
                                    )
                                  : GradientButton1(
                                      onPressed: () {
                                        controller.nextPage(
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeIn);
                                      },
                                      text: "İleri",
                                      borderRadius: width * 0.6,
                                      width: width * 0.2,
                                    ),
                            ),
                          ],
                        ),
                  SizedBox(height: height * 0.1),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
