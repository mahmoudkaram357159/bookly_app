import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> similarFeaturedBooks({required String category});
}
