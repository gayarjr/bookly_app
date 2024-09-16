import 'package:flutter/material.dart';

class CustemLoadingIndicator extends StatelessWidget {
  const CustemLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: const CircularProgressIndicator(),
    );
  }
}
