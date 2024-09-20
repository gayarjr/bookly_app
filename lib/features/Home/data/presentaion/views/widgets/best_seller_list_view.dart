import 'package:bookly_app/core/Utls/widgets/custem_error_widgets.dart';
import 'package:bookly_app/core/Utls/widgets/custem_loading_indicator.dart';
import 'package:bookly_app/features/Home/data/presentaion/Manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSucces) {
          return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustemErrorWidgets(errorMessege: state.errorMessege);
        } else {
          return CustemLoadingIndicator();
        }
      },
    );
  }
}
