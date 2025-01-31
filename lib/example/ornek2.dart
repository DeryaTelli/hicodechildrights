import 'package:flutter/material.dart';
import 'package:hicodechildrights/result/sonucsayfasi2.dart';
class Ornek2 extends StatelessWidget {
  const Ornek2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Resimdeki 7 Farkı Bulunuz"),
          centerTitle: true,
          backgroundColor: Color(0xFFB566F2),
          foregroundColor: Colors.white,
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
  /*
  Color renk1 = Colors.red;
  Color renk2 = Colors.blue;
  Color renk3 = Colors.yellowAccent;
  Color renk4 = Colors.green;
  Color renk5 = Colors.greenAccent;
  Color renk6 = Colors.brown;
  Color renk7 = Colors.purple;
  */
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
                          setState(() {
                            sayac++;
                            print("sayac: $sayac");
                            renk1 = Colors.yellow;
                          });
                          if (sayac == 7) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi2()));
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
                          setState(() {
                            sayac++;
                            print("sayac: $sayac");
                            renk2 = Colors.yellow;
                          });
                          if (sayac == 7) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi2()));
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
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk3 = Colors.yellow;
                            });
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi2()));
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
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk4 = Colors.yellow;
                            });
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi2()));
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
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk5 = Colors.yellow;
                            });
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi2()));
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
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk6 = Colors.yellow;
                            });
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi2()));
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
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk7 = Colors.yellow;
                            });
                            if (sayac == 7) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi2()));
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
