import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/main_screen/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchBooks() async {
    emit(FeaturedBooksLoading());
    homeRepo.fetchFeaturedBooks().then((value) {
      value.fold((failure) {
        emit(FeaturedBooksError(failure.errMessage));
        //return failure;
      }, (books) {
        emit(FeaturedBooksSuccess(books));
        //return result;
      });
    });
  }
}
