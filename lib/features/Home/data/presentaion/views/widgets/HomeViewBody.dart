import 'package:bookly_app/core/Utls/asset.dart';
import 'package:bookly_app/core/Utls/style.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/CoustemAppBar.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/custem_list_view_item.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/featuered_list_view.dart';
import 'package:bookly_app/features/constant.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CoustemAppBar(),
          const featuerdboxlistview(),
          const SizedBox(
            height: 50,
          ),
          Text('Best Seller ', style: Styles.textStyle18),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetData.testimage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
