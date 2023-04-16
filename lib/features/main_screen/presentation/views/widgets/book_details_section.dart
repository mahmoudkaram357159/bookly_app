import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utils/styles.dart';
import 'books_button.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: CustomBookItem(
          url: bookModel.volumeInfo!.imageLinks?.thumbnail ?? " ",
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Center(
        child: Text(
          bookModel.volumeInfo!.title!,
          maxLines: 2,
          style: Styles.textStyle30.copyWith(
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Opacity(
        opacity: .7,
        child: Text(
          bookModel.volumeInfo!.authors![0],
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      StarRating(
        mainAxisAlignment: MainAxisAlignment.center,
        averageRating: bookModel.volumeInfo!.averageRating ?? 0,
        countRating: bookModel.volumeInfo!.ratingsCount ?? 0,
      ),
      const SizedBox(
        height: 10.0,
      ),
       BookActionButton(bookModel:bookModel,),
    ]);
  }
}
