import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpelemention implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchbestsellerbooks() {
    // TODO: implement fetchbestsellerbooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchfeaturedBooks() {
    // TODO: implement fetchfeaturedBooks
    throw UnimplementedError();
  }
}
