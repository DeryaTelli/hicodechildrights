/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/buttons.dart';
import 'package:flutter_application_1/screens/matchingGameScreen.dart';
import 'package:flutter_application_1/screens/onBoarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          double height = constraints.maxHeight;

          double imageHeight = (height * 0.4).clamp(150.0, 400.0);
          double titleFontSize = (width * 0.07).clamp(16.0, 32.0);
          double descriptionFontSize = (width * 0.04).clamp(12.0, 20.0);

          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
              child: Column(
                children: [
                  _currentPage == 3
                      ? Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: height * 0.1,
                                ),
                                Image.asset(
                                  'assets/images/rb_55508.png',
                                  height: imageHeight,
                                ), // 4. sayfa görseli
                                SizedBox(height: height * 0.01),
                                Text(
                                  'Eglen', // 4. sayfa başlığı
                                  style: TextStyle(
                                      fontSize: titleFontSize,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF461D8D),
                                      fontFamily: "PatuaOne"),
                                ),
                                Text(
                                  'Ögrenirken keyif al, oyunlarla haklarını kesfet!', // 4. sayfa açıklaması
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: descriptionFontSize,
                                      color: const Color(0XFF373737),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "PatuaOne"),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                )
                              ],
                            ),
                          ),
                        )
                      : Expanded(
                          child: PageView(
                            controller: controller,
                            onPageChanged: (index) {
                              setState(() {
                                _currentPage = index;
                              });
                            },
                            children: [
                              OnBoarding(
                                image: 'assets/images/rb_128875.png',
                                title: 'Oku',
                                description:
                                    'Haklarını ögren, kendini gelistir!',
                                controller: controller,
                              ),
                              OnBoarding(
                                image: 'assets/images/rb_100411.png',
                                title: 'Kesfet',
                                description:
                                    'Yeni bilgilerle dünyanı genislet!',
                                controller: controller,
                              ),
                              OnBoarding(
                                image: 'assets/images/rb_95363.png',
                                title: 'Paylas',
                                description:
                                    'Ögrendiklerini arkadaslarınla paylas!',
                                controller: controller,
                              ),
                              OnBoarding(
                                image: 'assets/images/rb_55508.png',
                                title: 'Eglen',
                                description:
                                    'Ögrenirken keyif al, oyunlarla haklarını kesfet!',
                                controller: controller,
                              ),
                            ],
                          ),
                        ),
                  SizedBox(height: height * 0.02),
                  // Sayfa geçiş butonları
                  _currentPage == 3
                      ? FittedBox(
                          fit: BoxFit.scaleDown,
                          child: GradientButton1(
                            text: "Kesfetmeye Basla",
                            fontFamily: "PatuaOne",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MatchingGameScreen()));
                            },
                            borderRadius: 12,
                            width: width * 0.5,
                          ),
                        )
                      : _currentPage == 0
                          ? FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SizedBox(
                                width: width * 0.3,
                                height: height * 0.06,
                                child: GradientButton2(
                                  onPressed: () {
                                    controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                  isForwardButton: true,
                                ),
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: SizedBox(
                                    width: width * 0.3,
                                    height: height * 0.06,
                                    child: GradientButton2(
                                      onPressed: () {
                                        controller.previousPage(
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeIn);
                                      },
                                      isForwardButton: false,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: GradientButton1(
                                    onPressed: () {
                                      controller.nextPage(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeIn);
                                    },
                                    text: "İleri >",
                                    fontFamily: 'PatuaOne',
                                    borderRadius: width * 0.6,
                                    width: width * 0.2,
                                  ),
                                ),
                              ],
                            ),
                  SizedBox(
                    height: height * 0.1,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}*/
