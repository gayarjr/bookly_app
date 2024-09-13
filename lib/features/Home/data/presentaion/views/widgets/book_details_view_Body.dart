import 'package:bookly_app/features/Home/data/presentaion/views/widgets/custem_book_details_appbar.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/cutstem_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustemBookdetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: CustemBookItem(),
          ),
        ],
      ),
    );
  }
}
