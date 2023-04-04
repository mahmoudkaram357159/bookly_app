import 'package:bookly_app/core/errors/error_screen.dart';
import 'package:bookly_app/core/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../management_ui/featured_books_cubit/featured_books_cubit.dart';
import 'custom_book_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is FeaturedBooksError) {
          return Center(
            child: ErrorScreen(
              errorMessage: state.errorMessage,
            ),
          );
        } else if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .33,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: ((context, index) {
                  
                    return CustomBookItem(
                      url: state
                              .books[index].volumeInfo?.imageLinks?.thumbnail ??
                          "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD",
                    );
                  })),
            ),
          );
        } else if (state is FeaturedBooksLoading) {
          return const Loading();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
