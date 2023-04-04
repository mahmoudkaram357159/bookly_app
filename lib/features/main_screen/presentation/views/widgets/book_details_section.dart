import 'package:bookly_app/features/main_screen/presentation/views/widgets/star_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'books_button.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .2),
        child: const CustomBookItem(
          url:
              "https://images-na.ssl-images-amazon.com/images/I/51ZyIuB1ZaL._SX331_BO1,204,203,200_.jpg",
        ),
      ),
      const SizedBox(
        height: 30.0,
      ),
      const Text(
        " Do your Best ",
        style: Styles.textStyle30,
      ),
      const SizedBox(
        height: 6,
      ),
      Opacity(
        opacity: .7,
        child: Text(
          " do your best ",
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const StarRating(
        mainAxisAlignment: MainAxisAlignment.center,
        averageRating: 0,
        countRating: 0,
      ),
      const SizedBox(
        height: 40.0,
      ),
      const BookActionButton(),
    ]);
  }
}
