import 'package:bookly_app/core/Utls/asset.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/CoustemAppBar.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/custem_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CoustemAppBar(),
        const featuerdboxlistview(),
      ],
    );
  }
}

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
              child: const CustemListViewItem(),
            );
          }),
    );
  }
}
