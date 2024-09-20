import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'features_books_state.dart';

class FeaturesBooksCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksCubit(this.homeRepo) : super(FeaturesBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturebooks() async {
    emit(FeaturesBooksLoading());
    var result = await homeRepo.fetchfeaturedBooks();

    result.fold((falure) {
      emit(FeaturesBooksfaluire(falure.errorMessage));
    }, (books) {
      emit(FeaturesBooksSucces(books));
    });
  }
}
