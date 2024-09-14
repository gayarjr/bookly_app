import 'package:bookly_app/core/Utls/app_router.dart';
import 'package:bookly_app/core/Utls/asset.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CoustemAppBar extends StatelessWidget {
  const CoustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 21,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.Ksearchview);
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 21,
              ))
        ],
      ),
    );
  }
}
