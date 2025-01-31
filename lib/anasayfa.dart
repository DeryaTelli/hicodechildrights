import 'package:flutter/material.dart';
import 'package:hicodechildrights/color.dart';
import 'package:hicodechildrights/example/ornek1.dart';
import 'package:hicodechildrights/example/ornek2.dart';
import 'package:hicodechildrights/example/ornek3.dart';
import 'package:hicodechildrights/example/ornek4.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    double ekranYukseklik = ekran.size.height;
    double ekranGenislik = ekran.size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resimler Arasındaki Fark'),
        foregroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.primaryGradient,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
                top: ekranYukseklik * 0.05,
                left: ekranGenislik * 0.05,
                right: ekranGenislik * 0.05),
            child: Column(
              children: [
                SizedBox(
                  width: ekranGenislik * 0.7,
                  height: ekranYukseklik * 0.07,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ornek1(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Örnek 1",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.color1,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                  ),
                ),
                SizedBox(
                  height: ekranYukseklik * 0.03,
                ),
                SizedBox(
                  width: ekranGenislik * 0.7,
                  height: ekranYukseklik * 0.07,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ornek2(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Örnek 2",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.color2,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                  ),
                ),
                SizedBox(
                  height: ekranYukseklik * 0.03,
                ),
                SizedBox(
                  width: ekranGenislik * 0.7,
                  height: ekranYukseklik * 0.07,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ornek3(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Örnek 3",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 107, 65, 65),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                  ),
                ),
                SizedBox(
                  height: ekranYukseklik * 0.03,
                ),
                SizedBox(
                  width: ekranGenislik * 0.7,
                  height: ekranYukseklik * 0.07,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ornek4(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Örnek 4",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.color4,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                  ),
                ),
                SizedBox(
                  height: ekranYukseklik * 0.1,
                ),
                Image.asset(
                  "assets/images/cocuklarresim.png",
                  height: ekranYukseklik * 0.5,
                  width: ekranGenislik * 0.9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
