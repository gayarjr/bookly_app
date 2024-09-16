import 'package:bookly_app/core/Utls/style.dart';
import 'package:flutter/material.dart';

class CustemErrorWidgets extends StatelessWidget {
  const CustemErrorWidgets({super.key, required this.errorMessege});
  final String errorMessege;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessege,
      style: Styles.textStyle18,
    );
  }
}
