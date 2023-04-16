import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  // final BookModel bookModel;
  Future<void> similarNewestBooks({required String category}) async {
    emit(SimilarBooksLoading());

    var result = await homeRepo.similarFeaturedBooks(category: category);

    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
      //return failure;
    }, (books) {
      emit(SimilarBooksSuccess(books));
      // return result;
    });
  }
}
