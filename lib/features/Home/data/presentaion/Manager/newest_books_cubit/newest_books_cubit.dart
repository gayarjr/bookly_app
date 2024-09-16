import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsbooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchfeaturedBooks();

    result.fold((falure) {
      emit(NewestBooksFailure(falure.errorMessage));
    }, (books) {
      emit(NewestBooksSucces(books));
    });
  }
}
