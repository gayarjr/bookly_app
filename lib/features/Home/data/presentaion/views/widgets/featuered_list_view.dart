import 'package:bookly_app/core/Utls/widgets/custem_error_widgets.dart';
import 'package:bookly_app/core/Utls/widgets/custem_loading_indicator.dart';
import 'package:bookly_app/features/Home/data/presentaion/Manager/features_books_cubit/features_books_cubit.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/widgets/custem_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class featuerdboxlistview extends StatelessWidget {
  const featuerdboxlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesBooksCubit, FeaturesBooksState>(
      builder: (context, state) {
        if (state is FeaturesBooksSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                itemCount: 15,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const CustemBookItem(),
                  );
                }),
          );
        } else if (state is FeaturesBooksfaluire) {
          return CustemErrorWidgets(errorMessege: state.errormassege);
        } else {
          return CustemLoadingIndicator();
        }
      },
    );
  }
}
