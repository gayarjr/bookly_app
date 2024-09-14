import 'package:bookly_app/core/Utls/style.dart';
import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
  const CustemButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontsize,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontSize: fontsize,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
