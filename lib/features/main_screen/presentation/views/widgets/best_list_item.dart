import 'package:bookly_app/core/widgets/loading.dart';
import 'package:bookly_app/features/main_screen/presentation/management_ui/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_listview_item.dart';

class ListViewBestSellers extends StatelessWidget {
  const ListViewBestSellers({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BestSellerItemListView(
                  bookModel: state.books[index],
                ),
              );
            }),
            itemCount: state.books.length,
            // shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          );
        } else if (state is NewestBooksFailure) {
          return ErrorWidget(state.errorMessage);
        } else {
          return const Loading();
        }
      },
    );
  }
}
