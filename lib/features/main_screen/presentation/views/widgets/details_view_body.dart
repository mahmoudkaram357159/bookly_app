import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/custome_appbar_book_details.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'book_smiller_section.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CustomAppBarBookDetails(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 40.0,
                  ),
                ),
                BookSmilerSection(
                  bookModel: bookModel,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
