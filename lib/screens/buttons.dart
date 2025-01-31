import 'package:flutter/material.dart';

import '../color.dart';

class GradientButton1 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double borderRadius;
  final double width;

  const GradientButton1({
    super.key,
    required this.text,
    required this.onPressed,
    required this.borderRadius,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = constraints.maxWidth > 0
            ? (constraints.maxWidth * 0.10)
                .clamp(6.0, 16.0) // Daha küçük sınırlar
            : 14.0;

        return SizedBox(
          width: width,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            child: Ink(
              decoration: BoxDecoration(
                gradient: AppGradients.primaryGradient,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Text(
                  text,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class GradientButton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final bool
      isForwardButton; // Sayfada ileri mi geri mi olduğunu kontrol etmek için

  const GradientButton2({
    super.key,
    required this.onPressed,
    this.isForwardButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: CircleBorder(),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: isForwardButton
                ? AppGradients.primaryGradient
                : LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0XFFF6F6F6), Color(0XFFF6F6F6)],
                  ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              isForwardButton
                  ? Icons.arrow_forward_ios
                  : Icons.arrow_back_ios_new,
              color: isForwardButton
                  ? Colors.white
                  : Color(
                      0XFF8142EF), // İleri için gradient rengi, geri için beyaz
            ),
          ),
        ),
      ),
    );
  }
}
