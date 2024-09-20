import 'package:bookly_app/core/Utls/style.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/search/presentaion/views/wedgets/custem_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustemSearchTextfield(),
          const SizedBox(
            height: 16,
          ),
          Text('Search Resalts ', style: Styles.textStyle18),
          const SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResaltListView()),
        ],
      ),
    );
  }
}

class SearchResaltListView extends StatelessWidget {
  const SearchResaltListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            // child: const BookListViewItem(),
            child: Text('data'),
          );
        });
    ;
  }
}
