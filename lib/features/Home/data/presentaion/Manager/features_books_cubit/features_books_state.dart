part of 'features_books_cubit.dart';

abstract class FeaturesBooksState extends Equatable {
  const FeaturesBooksState();

  @override
  List<Object> get props => [];
}

class FeaturesBooksInitial extends FeaturesBooksState {}

class FeaturesBooksLoading extends FeaturesBooksState {}

class FeaturesBooksfaluire extends FeaturesBooksState {
  final String errormassege;

  const FeaturesBooksfaluire(this.errormassege);
}

class FeaturesBooksSucces extends FeaturesBooksState {
  final List<BookModel> books;

  const FeaturesBooksSucces(this.books);
}
