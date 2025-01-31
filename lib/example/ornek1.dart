import 'package:flutter/material.dart';
import 'package:hicodechildrights/color.dart';
import 'package:hicodechildrights/result/sonucsayfasi.dart';

class Ornek1 extends StatelessWidget {
  const Ornek1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Resimdeki 7 Farkı Bul'),
          foregroundColor: Colors.white,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: AppGradients.primaryGradient,
            ),
          ),
        ),
        body: Resim(500, "assets/images/resim1.jpg"));
  }
}

class Resim extends StatefulWidget {
  double resimSize;
  String resimYol = "";
  Resim(this.resimSize, this.resimYol, {Key? key}) : super(key: key);

  @override
  State<Resim> createState() => _ResimState();
}

class _ResimState extends State<Resim> {
  var sayac = 0;
  // Farkların tıklanıp tıklanmadığını takip eden değişkenler
  List<bool> farklar = List.generate(7, (_) => false);

  Color renk1 = Colors.transparent;
  Color renk2 = Colors.transparent;
  Color renk3 = Colors.transparent;
  Color renk4 = Colors.transparent;
  Color renk5 = Colors.transparent;
  Color renk6 = Colors.transparent;
  Color renk7 = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double resimGenislik = constraints.maxWidth * 0.9;
        double resimYukseklik = constraints.maxHeight * 0.9;

        return SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text("Üstteki resime tıklayarak aradaki farkları bulunuz"),
                Stack(
                  children: [
                    Container(
                      width: resimGenislik,
                      height: resimYukseklik,
                      child: Image.asset(
                        widget.resimYol,
                        fit: BoxFit.fill,
                      ),
                    ),
                    // 1. Fark
                    Positioned(
                      left: resimGenislik * 0.15,
                      top: resimYukseklik * 0.13,
                      child: GestureDetector(
                        onTap: () {
                          if (!farklar[0]) {
                            setState(() {
                              farklar[0] = true; // Farkı işaretle
                              renk1 =
                                  Colors.yellow; // Tıklanan farkı sarıya boya
                              sayac++;
                            });
                          }
                          if (sayac == 7) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi()));
                          }
                        },
                        child: Container(
                          width: 70,
                          height: 50,
                          color: renk1,
                        ),
                      ),
                    ),
                    // 2. Fark
                    Positioned(
                      left: resimGenislik * 0.47,
                      top: resimYukseklik * 0.015,
                      child: GestureDetector(
                        onTap: () {
                          if (!farklar[1]) {
                            setState(() {
                              farklar[1] = true;
                              renk2 = Colors.yellow;
                              sayac++;
                            });
                          }
                          if (sayac == 7) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi()));
                          }
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          color: renk2,
                        ),
                      ),
                    ),
                    // 3. Fark
                    Positioned(
                        left: resimGenislik * 0.76,
                        top: resimYukseklik * 0.23,
                        child: GestureDetector(
                          onTap: () {
                            if (!farklar[2]) {
                              setState(() {
                                farklar[2] = true;
                                renk3 = Colors.yellow;
                                sayac++;
                              });
                            }
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi()));
                            }
                          },
                          child: Container(
                            width: 85,
                            height: 75,
                            color: renk3,
                          ),
                        )),
                    // 4. Fark
                    Positioned(
                        left: resimGenislik * 0.49,
                        top: resimYukseklik * 0.2,
                        child: GestureDetector(
                          onTap: () {
                            if (!farklar[3]) {
                              setState(() {
                                farklar[3] = true;
                                renk4 = Colors.yellow;
                                sayac++;
                              });
                            }
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi()));
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 75,
                            color: renk4,
                          ),
                        )),
                    // 5. Fark
                    Positioned(
                        left: resimGenislik * 0.24,
                        top: resimYukseklik * 0.35,
                        child: GestureDetector(
                          onTap: () {
                            if (!farklar[4]) {
                              setState(() {
                                farklar[4] = true;
                                renk5 = Colors.yellow;
                                sayac++;
                              });
                            }
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi()));
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 40,
                            color: renk5,
                          ),
                        )),
                    // 6. Fark
                    Positioned(
                        left: resimGenislik * 0.41,
                        top: resimYukseklik * 0.35,
                        child: GestureDetector(
                          onTap: () {
                            if (!farklar[5]) {
                              setState(() {
                                farklar[5] = true;
                                renk6 = Colors.yellow;
                                sayac++;
                              });
                            }
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi()));
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 40,
                            color: renk6,
                          ),
                        )),
                    // 7. Fark
                    Positioned(
                        left: resimGenislik * 0.14,
                        top: resimYukseklik * 0.30,
                        child: GestureDetector(
                          onTap: () {
                            if (!farklar[6]) {
                              setState(() {
                                farklar[6] = true;
                                renk7 = Colors.yellow;
                                sayac++;
                              });
                            }
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi()));
                            }
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            color: renk7,
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
