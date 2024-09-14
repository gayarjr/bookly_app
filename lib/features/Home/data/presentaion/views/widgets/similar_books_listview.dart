import 'package:bookly_app/features/Home/data/presentaion/views/widgets/custem_list_view_item.dart';
import 'package:flutter/material.dart';

class simillarBooksListView extends StatelessWidget {
  const simillarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: const CustemBookItem(),
            );
          }),
    );
  }
}
