import 'package:bookly_app/core/Utls/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFDDC4C),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '(254)',
          style: Styles.textStyle14
              .copyWith(color: Colors.grey), // تعديل باستخدام copyWith
        ),
      ],
    );
  }
}
