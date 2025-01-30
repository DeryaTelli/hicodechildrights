import 'package:flutter/material.dart';
import 'package:hicodechildrights/anasayfa.dart';
import 'package:hicodechildrights/tahminoyunu.dart/tahminanasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
      //home: Anasayfa(), --> resimler arasındaki fark ekranı
      //home: Tahminanasayfa(), --> tahmin oyunu
    );
  }
}
