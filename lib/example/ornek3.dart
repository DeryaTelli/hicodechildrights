import 'package:flutter/material.dart';
import 'package:hicodechildrights/result/sonucsayfasi3.dart';

class Ornek3 extends StatelessWidget {
  const Ornek3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Resimdeki 5 Farkı Bulunuz"),
          centerTitle: true,
          backgroundColor: Color(0xFFB566F2),
          foregroundColor: Colors.white,
        ),
        body: Resim(500, "assets/images/resim3.jpg"));
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
*/
/*
  Color renk6 = Colors.brown;
  Color renk7 = Colors.purple;
*/

  Color renk1 = Colors.transparent;
  Color renk2 = Colors.transparent;
  Color renk3 = Colors.transparent;
  Color renk4 = Colors.transparent;
  Color renk5 = Colors.transparent;

/*
  Color renk6 = Colors.transparent;
  Color renk7 = Colors.transparent;
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
                      left: resimGenislik * 0.11,
                      top: resimYukseklik * 0.13,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            sayac++;
                            print("sayac: $sayac");
                            renk1 = Colors.yellow;
                          });
                          if (sayac == 5) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi3()));
                          }
                        },
                        child: Container(
                          width: 50,
                          height: 40,
                          color: renk1,
                        ),
                      ),
                    ),
                    Positioned(
                      left: resimGenislik * 0.72,
                      top: resimYukseklik * 0.08,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            sayac++;
                            print("sayac: $sayac");
                            renk2 = Colors.yellow;
                          });
                          if (sayac == 5) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sonucsayfasi3()));
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
                        left: resimGenislik * 0.81,
                        top: resimYukseklik * 0.125,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk3 = Colors.yellow;
                            });
                            if (sayac == 5) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi3()));
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 75,
                            color: renk3,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.65,
                        top: resimYukseklik * 0.195,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk4 = Colors.yellow;
                            });
                            if (sayac == 5) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi3()));
                            }
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            color: renk4,
                          ),
                        )),
                    Positioned(
                        left: resimGenislik * 0.20,
                        top: resimYukseklik * 0.37,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sayac++;
                              print("sayac: $sayac");
                              renk5 = Colors.yellow;
                            });
                            if (sayac == 5) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sonucsayfasi3()));
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 60,
                            color: renk5,
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
