import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utils/styles.dart';
import 'custome_list_view_item_smailer.dart';

class BookSmilerSection extends StatelessWidget {
  const BookSmilerSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          "You can also like ",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          height: 7,
        ),
        CustomListViewSmiler(
          bookModel: bookModel,
        ),
        SizedBox(
          height: 2.h,
        )
      ],
    );
  }
}
