import 'package:bookly_app/core/utils/constants.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';

import 'package:bookly_app/core/errors/failure.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/app_service.dart';
import 'home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final AppService appService;

  HomeRepoImp(this.appService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await appService.get(endPoint: Constants.endPointFetchNew);
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await appService.get(endPoint: Constants.endPointFetchBooks);
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
