import 'package:bookly_app/core/Utls/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.raiting,
  });

  final MainAxisAlignment mainAxisAlignment;
  final String raiting;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFDDC4C),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          raiting,
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 10,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(254)',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
