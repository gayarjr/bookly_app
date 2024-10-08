import 'package:bookly_app/core/Utls/api_srevices.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpelemention implements HomeRepo {
  final ApiSrevices apiSrevices;

  HomeRepoImpelemention(this.apiSrevices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsbooks() async {
    try {
      var data = await apiSrevices.get(
          endPoint:
              'volumes?q=subject:programming&Filtring=free-ebooks&Sorting=newest');
      List<BookModel> Books = [];

      for (var item in data['items']) {
        Books.add(BookModel.fromJson(item));
      }

      return right(Books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchfeaturedBooks() async {
    try {
      var data = await apiSrevices.get(
          endPoint: 'volumes?q=subject:programming&Filtring=free-ebooks');
      List<BookModel> Books = [];

      for (var item in data['items']) {
        Books.add(BookModel.fromJson(item));
      }

      return right(Books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
    throw UnimplementedError();
  }
}
