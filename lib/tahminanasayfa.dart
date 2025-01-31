import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hicodechildrights/color.dart';

class Tahminanasayfa extends StatefulWidget {
  @override
  _TahminanasayfaState createState() => _TahminanasayfaState();
}

class _TahminanasayfaState extends State<Tahminanasayfa> {
  final TextEditingController _txtController = TextEditingController();
  int? _tahmin;
  bool _isVisible = false;

  @override
  void dispose() {
    _txtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double ekranGenislik = MediaQuery.of(context).size.width;
    final double ekranYukseklik = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tahmin Kartı"),
        centerTitle: true,
        backgroundColor: const Color(0xFFB566F2),
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.primaryGradient,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ekranGenislik * 0.05,
            vertical: ekranYukseklik * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "0-5 arası bir sayı seçin ve tahmin kartınızı görüntüleyin!",
                style: TextStyle(
                    fontSize: ekranGenislik * 0.05,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: ekranYukseklik * 0.05),
              Column(
                children: [
                  SizedBox(
                    width: ekranGenislik * 0.7,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _txtController,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1),
                      ],
                      decoration: InputDecoration(
                        hintText: "0-5 arasında bir sayı girin",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ekranYukseklik * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: ekranGenislik * 0.1),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                                ekranGenislik * 0.3, ekranYukseklik * 0.07),
                            backgroundColor: const Color(0xFFB566F2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: _gosterKart,
                          child: const Text(
                            "Kartını Gör",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: ekranYukseklik * 0.05),
              Visibility(
                visible: _isVisible,
                child: _kartGorunumu(ekranGenislik, ekranYukseklik),
              ),
              SizedBox(height: ekranYukseklik * 0.03),
              Padding(
                padding: EdgeInsets.only(right: ekranGenislik * 0.1),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "assets/images/zurafa.png",
                    width: ekranGenislik * 0.3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _gosterKart() {
    setState(() {
      int? girilen = int.tryParse(_txtController.text);
      if (girilen != null && girilen >= 0 && girilen <= 5) {
        _tahmin = girilen;
        _isVisible = true;
      } else {
        _isVisible = false;
      }
    });
  }

  Widget _kartGorunumu(double ekranGenislik, double ekranYukseklik) {
    return Container(
      width: ekranGenislik * 0.7,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF55454),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Kart $_tahmin",
            style: TextStyle(
              fontSize: ekranGenislik * 0.05,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: ekranYukseklik * 0.02),
          Text(
            _kartBaslik(_tahmin),
            style: TextStyle(
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: ekranYukseklik * 0.01),
          Text(
            _kartIcerik(_tahmin),
            style: TextStyle(
              fontSize: ekranGenislik * 0.035,
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }

  String _kartBaslik(int? tahmin) {
    switch (tahmin) {
      case 1:
        return "Katılım Hakkı";
      case 2:
        return "Kimlik Hakkı";
      case 3:
        return "Sömürüye Karşı Korunma Hakkı";
      case 4:
        return "Engelli Çocukların Hakları";
      case 5:
        return "Özel Hayatın Gizliliği Hakkı";
      default:
        return "Bilinmeyen Kart";
    }
  }

  String _kartIcerik(int? tahmin) {
    switch (tahmin) {
      case 1:
        return "Çocuklar, kendilerini ilgilendiren konular hakkında görüşlerini özgürce ifade edebilir.";
      case 2:
        return "Her çocuğun bir isme, bir vatana ve bir kimliğe sahip olma hakkı vardır.";
      case 3:
        return "Çocuklar, her türlü ekonomik, fiziksel veya cinsel sömürüye karşı korunmalıdır. ";
      case 4:
        return "Engelli çocuklar, diğer çocuklarla eşit haklara sahiptir.";
      case 5:
        return "Hiçbir çocuğun özel hayatı, ailesi, evi veya iletişimi keyfi olarak ihlal edilemez. ";
      default:
        return "Bilinmeyen kart";
    }
  }
}
