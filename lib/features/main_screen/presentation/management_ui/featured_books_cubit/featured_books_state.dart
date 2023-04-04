// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}

class FeaturedBooksError extends FeaturedBooksState {
  final String errorMessage;

  const FeaturedBooksError(this.errorMessage);
}

class FeaturedBooksLoading extends FeaturedBooksState {}
