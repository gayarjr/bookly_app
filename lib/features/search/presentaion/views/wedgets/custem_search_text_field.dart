import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustemSearchTextfield extends StatelessWidget {
  const CustemSearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: BuildOutLineInputBorde(),
          focusedBorder: BuildOutLineInputBorde(),
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Opacity(
                opacity: .5,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 21,
                ),
              ))),
    );
  }

  OutlineInputBorder BuildOutLineInputBorde() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
