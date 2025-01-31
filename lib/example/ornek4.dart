import 'package:flutter/material.dart';
import 'package:hicodechildrights/color.dart';
import 'package:hicodechildrights/result/sonucsayfasi4.dart';

class Ornek4 extends StatelessWidget {
  const Ornek4({super.key});

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
        body: Resim(500, "assets/images/resim4.jpg"));
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

/*
  Color renk1 = Colors.red;
  Color renk2 = Colors.blue;
  Color renk3 = Colors.yellowAccent;
  Color renk4 = Colors.green;
  Color renk5 = Colors.greenAccent;
  Color renk6 = Colors.brown;
  Color renk7 = Colors.purple;
  Color renk8 = Colors.blueGrey;
*/

  Color renk1 = Colors.transparent;
  Color renk2 = Colors.transparent;
  Color renk3 = Colors.transparent;
  Color renk4 = Colors.transparent;
  Color renk5 = Colors.transparent;
  Color renk6 = Colors.transparent;
  Color renk7 = Colors.transparent;
  Color renk8 = Colors.transparent;

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
                      left: resimGenislik * 0.087,
                      top: resimYukseklik * 0.14,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            sayac++;
                            print("sayac: $sayac");
                            renk1 = Colors.yellow;
                          });
                          if (sayac == 8) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi4()));
                          }
                        },
                        child: Container(
                          width: 70,
                          height: 50,
                          color: renk1,
                        ),
                      ),
                    ),
                    Positioned(
                      left: resimGenislik * 0.537,
                      top: resimYukseklik * 0.045,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            sayac++;
                            print("sayac: $sayac");
                            renk2 = Colors.yellow;
                          });
                          if (sayac == 8) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi4()));
                          }
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          color: renk2,
                        ),
                      ),
                    ),
                    Positioned(
                        left: resimGenislik * 0.8,
                        top: resimYukseklik * 0.3,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk3 = Colors.yellow;
                            });
                            if (sayac == 8) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi4()));
                            }
                          },
                          child: Container(
                            width: 60,
                            height: 40,
                            color: renk3,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.505,
                        top: resimYukseklik * 0.3,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk4 = Colors.yellow;
                            });
                            if (sayac == 8) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi4()));
                            }
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            color: renk4,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.075,
                        top: resimYukseklik * 0.25,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk5 = Colors.yellow;
                            });
                            if (sayac == 8) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi4()));
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 40,
                            color: renk5,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.81,
                        top: resimYukseklik * 0.4,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk6 = Colors.yellow;
                            });
                            if (sayac == 8) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi4()));
                            }
                          },
                          child: Container(
                            width: 60,
                            height: 40,
                            color: renk6,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.45,
                        top: resimYukseklik * 0.395,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk7 = Colors.yellow;
                            });
                            if (sayac == 8) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi4()));
                            }
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            color: renk7,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.56,
                        top: resimYukseklik * 0.368,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk8 = Colors.yellow;
                            });
                            if (sayac == 8) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi4()));
                            }
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            color: renk8,
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
