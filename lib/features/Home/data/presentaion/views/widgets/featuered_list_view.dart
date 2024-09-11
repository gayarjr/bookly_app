import 'package:bookly_app/features/Home/data/presentaion/views/widgets/custem_list_view_item.dart';
import 'package:flutter/material.dart';

class featuerdboxlistview extends StatelessWidget {
  const featuerdboxlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: const feathuredListViewItem(),
            );
          }),
    );
  }
}
