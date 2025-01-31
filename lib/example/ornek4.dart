import 'package:flutter/material.dart';
import 'package:hicodechildrights/color.dart';
import 'package:hicodechildrights/result/sonucsayfasi4.dart';

class Ornek4 extends StatelessWidget {
  const Ornek4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Resimdeki 8 Farkı Bul'),
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

  // Farklar için renkler
  Color renk1 = Colors.transparent;
  Color renk2 = Colors.transparent;
  Color renk3 = Colors.transparent;
  Color renk4 = Colors.transparent;
  Color renk5 = Colors.transparent;
  Color renk6 = Colors.transparent;
  Color renk7 = Colors.transparent;
  Color renk8 = Colors.transparent;

  // Farklar için tıklama kontrol değişkenleri
  bool tiklanabilir1 = true;
  bool tiklanabilir2 = true;
  bool tiklanabilir3 = true;
  bool tiklanabilir4 = true;
  bool tiklanabilir5 = true;
  bool tiklanabilir6 = true;
  bool tiklanabilir7 = true;
  bool tiklanabilir8 = true;

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
                    // Farklar için GestureDetector widget'ları
                    Positioned(
                      left: resimGenislik * 0.087,
                      top: resimYukseklik * 0.14,
                      child: GestureDetector(
                        onTap: tiklanabilir1
                            ? () {
                                setState(() {
                                  sayac++;
                                  renk1 = Colors.yellow;
                                  tiklanabilir1 = false; // Tıklamayı engelle
                                });
                                if (sayac == 8) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Sonucsayfasi4()));
                                }
                              }
                            : null,
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
                        onTap: tiklanabilir2
                            ? () {
                                setState(() {
                                  sayac++;
                                  renk2 = Colors.yellow;
                                  tiklanabilir2 = false;
                                });
                                if (sayac == 8) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Sonucsayfasi4()));
                                }
                              }
                            : null,
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
                          onTap: tiklanabilir3
                              ? () {
                                  setState(() {
                                    sayac++;
                                    renk3 = Colors.yellow;
                                    tiklanabilir3 = false;
                                  });
                                  if (sayac == 8) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Sonucsayfasi4()));
                                  }
                                }
                              : null,
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
                          onTap: tiklanabilir4
                              ? () {
                                  setState(() {
                                    sayac++;
                                    renk4 = Colors.yellow;
                                    tiklanabilir4 = false;
                                  });
                                  if (sayac == 8) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Sonucsayfasi4()));
                                  }
                                }
                              : null,
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
                          onTap: tiklanabilir5
                              ? () {
                                  setState(() {
                                    sayac++;
                                    renk5 = Colors.yellow;
                                    tiklanabilir5 = false;
                                  });
                                  if (sayac == 8) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Sonucsayfasi4()));
                                  }
                                }
                              : null,
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
                          onTap: tiklanabilir6
                              ? () {
                                  setState(() {
                                    sayac++;
                                    renk6 = Colors.yellow;
                                    tiklanabilir6 = false;
                                  });
                                  if (sayac == 8) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Sonucsayfasi4()));
                                  }
                                }
                              : null,
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
                          onTap: tiklanabilir7
                              ? () {
                                  setState(() {
                                    sayac++;
                                    renk7 = Colors.yellow;
                                    tiklanabilir7 = false;
                                  });
                                  if (sayac == 8) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Sonucsayfasi4()));
                                  }
                                }
                              : null,
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
                          onTap: tiklanabilir8
                              ? () {
                                  setState(() {
                                    sayac++;
                                    renk8 = Colors.yellow;
                                    tiklanabilir8 = false;
                                  });
                                  if (sayac == 8) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Sonucsayfasi4()));
                                  }
                                }
                              : null,
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
