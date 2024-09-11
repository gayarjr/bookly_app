import 'package:bookly_app/core/Utls/asset.dart';
import 'package:flutter/material.dart';

class feathuredListViewItem extends StatelessWidget {
  const feathuredListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetData.testimage),
          ),
        ),
      ),
    );
  }
}
