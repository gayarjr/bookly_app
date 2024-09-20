import 'package:bookly_app/core/Utls/app_router.dart';
import 'package:bookly_app/core/Utls/asset.dart';
import 'package:bookly_app/core/Utls/style.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/custem_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.Kbookdetailsview);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustemBookItem(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle30,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle30
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        BookRating(
                          raiting: bookModel.volumeInfo.maturityRating ?? '0',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
