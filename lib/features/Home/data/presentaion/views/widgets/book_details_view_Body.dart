import 'package:bookly_app/features/Home/data/presentaion/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/custem_book_details_appbar.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                CustemBookdetailsAppBar(),
                const BookDetailsSection(),
                const Expanded(
                  child: const SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
