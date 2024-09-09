import 'package:bookly_app/core/Utls/asset.dart';
import 'package:flutter/material.dart';

class CustemListViewItem extends StatelessWidget {
  const CustemListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
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
      ),
    );
  }
}
