import 'package:flutter/material.dart';
import 'package:hicodechildrights/color.dart';
import 'package:hicodechildrights/result/sonucsayfasi2.dart';

class Ornek2 extends StatelessWidget {
  const Ornek2({super.key});

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
        body: Resim(500, "assets/images/resim2.jpg"));
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

  //transparant renk olacak
  Color renk1 = Colors.transparent;
  Color renk2 = Colors.transparent;
  Color renk3 = Colors.transparent;
  Color renk4 = Colors.transparent;
  Color renk5 = Colors.transparent;
  Color renk6 = Colors.transparent;
  Color renk7 = Colors.transparent;

  // Farkların tıklanıp tıklanmadığını kontrol etmek için boolean değişkenler
  bool tiklanmis1 = false;
  bool tiklanmis2 = false;
  bool tiklanmis3 = false;
  bool tiklanmis4 = false;
  bool tiklanmis5 = false;
  bool tiklanmis6 = false;
  bool tiklanmis7 = false;

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
                    Positioned(
                      left: resimGenislik * 0.48,
                      top: resimYukseklik * 0.015,
                      child: GestureDetector(
                        onTap: () {
                          if (!tiklanmis1) {
                            // Eğer bu fark tıklanmamışsa
                            setState(() {
                              sayac++;
                              tiklanmis1 =
                                  true; // Bu farkı tıklanmış olarak işaretle
                              renk1 = Colors.yellow;
                            });
                            print("sayac: $sayac");
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sonucsayfasi2(),
                                ),
                              );
                            }
                          }
                        },
                        child: Container(
                          width: 40,
                          height: 50,
                          color: renk1,
                        ),
                      ),
                    ),
                    Positioned(
                      left: resimGenislik * 0.6,
                      top: resimYukseklik * 0.015,
                      child: GestureDetector(
                        onTap: () {
                          if (!tiklanmis2) {
                            // Eğer bu fark tıklanmamışsa
                            setState(() {
                              sayac++;
                              tiklanmis2 =
                                  true; // Bu farkı tıklanmış olarak işaretle
                              renk2 = Colors.yellow;
                            });
                            print("sayac: $sayac");
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sonucsayfasi2(),
                                ),
                              );
                            }
                          }
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          color: renk2,
                        ),
                      ),
                    ),
                    Positioned(
                        left: resimGenislik * 0.535,
                        top: resimYukseklik * 0.235,
                        child: GestureDetector(
                          onTap: () {
                            if (!tiklanmis3) {
                              // Eğer bu fark tıklanmamışsa
                              setState(() {
                                sayac++;
                                tiklanmis3 =
                                    true; // Bu farkı tıklanmış olarak işaretle
                                renk3 = Colors.yellow;
                              });
                              print("sayac: $sayac");
                              if (sayac == 7) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi2(),
                                  ),
                                );
                              }
                            }
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            color: renk3,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.4,
                        top: resimYukseklik * 0.245,
                        child: GestureDetector(
                          onTap: () {
                            if (!tiklanmis4) {
                              // Eğer bu fark tıklanmamışsa
                              setState(() {
                                sayac++;
                                tiklanmis4 =
                                    true; // Bu farkı tıklanmış olarak işaretle
                                renk4 = Colors.yellow;
                              });
                              print("sayac: $sayac");
                              if (sayac == 7) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi2(),
                                  ),
                                );
                              }
                            }
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            color: renk4,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.01,
                        top: resimYukseklik * 0.325,
                        child: GestureDetector(
                          onTap: () {
                            if (!tiklanmis5) {
                              // Eğer bu fark tıklanmamışsa
                              setState(() {
                                sayac++;
                                tiklanmis5 =
                                    true; // Bu farkı tıklanmış olarak işaretle
                                renk5 = Colors.yellow;
                              });
                              print("sayac: $sayac");
                              if (sayac == 7) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi2(),
                                  ),
                                );
                              }
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 60,
                            color: renk5,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.67,
                        top: resimYukseklik * 0.32,
                        child: GestureDetector(
                          onTap: () {
                            if (!tiklanmis6) {
                              // Eğer bu fark tıklanmamışsa
                              setState(() {
                                sayac++;
                                tiklanmis6 =
                                    true; // Bu farkı tıklanmış olarak işaretle
                                renk6 = Colors.yellow;
                              });
                              print("sayac: $sayac");
                              if (sayac == 7) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi2(),
                                  ),
                                );
                              }
                            }
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            color: renk6,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.46,
                        top: resimYukseklik * 0.37,
                        child: GestureDetector(
                          onTap: () {
                            if (!tiklanmis7) {
                              // Eğer bu fark tıklanmamışsa
                              setState(() {
                                sayac++;
                                tiklanmis7 =
                                    true; // Bu farkı tıklanmış olarak işaretle
                                renk7 = Colors.yellow;
                              });
                              print("sayac: $sayac");
                              if (sayac == 7) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi2(),
                                  ),
                                );
                              }
                            }
                          },
                          child: Container(
                            width: 55,
                            height: 70,
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
