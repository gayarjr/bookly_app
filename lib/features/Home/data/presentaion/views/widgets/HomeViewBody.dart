import 'package:bookly_app/core/Utls/style.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/CoustemAppBar.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/best_seller_list_view_item.dart';

import 'package:bookly_app/features/Home/data/presentaion/views/widgets/featuered_list_view.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const CoustemAppBar(),
              ),
              const featuerdboxlistview(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Best Seller ', style: Styles.textStyle18),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
