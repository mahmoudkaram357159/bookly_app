import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).pushReplacement(AppRouter.kDetailsView),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookItem(
                url: bookModel.volumeInfo!.imageLinks?.thumbnail ??
                    "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD"),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(bookModel.volumeInfo!.title!,
                        maxLines: 2,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Text(bookModel.volumeInfo!.authors!.first,
                      maxLines: 1,
                      style: Styles.textStyle14,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Text("Free Book",
                          maxLines: 1,
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis),
                      const Spacer(),
                      StarRating(
                        averageRating: bookModel.volumeInfo!.averageRating?.round() ?? 0,
                        countRating: bookModel.volumeInfo!.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
