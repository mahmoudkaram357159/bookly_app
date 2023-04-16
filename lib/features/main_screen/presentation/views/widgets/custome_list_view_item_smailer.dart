import 'package:bookly_app/core/errors/error_screen.dart';
import 'package:bookly_app/core/widgets/loading.dart';
import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/main_screen/presentation/management_ui/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utils/routes.dart';

class CustomListViewSmiler extends StatelessWidget {
  const CustomListViewSmiler({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: 18.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () => GoRouter.of(context).pushReplacement(
                        AppRouter.kDetailsView,
                        extra: state.books[index]),
                    child: CustomBookItem(
                      spaceBetweenItem: 5,
                      url: state
                              .books[index].volumeInfo!.imageLinks?.thumbnail ??
                          '',
                    ),
                  );
                })),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorScreen(errorMessage: state.errorMessage);
        } else {
          return const Loading();
        }
      },
    );
  }
}
