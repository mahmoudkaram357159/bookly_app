import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/star_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage(AssetData.testPhoto))),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text("Harry Potter and the Goblet of Fire",
                      maxLines: 2,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                      overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                const Text("J.K. Rowling",
                    maxLines: 1,
                    style: Styles.textStyle14,
                    overflow: TextOverflow.ellipsis),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  children: [
                    Text("19.99 €",
                        maxLines: 1,
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis),
                    const Spacer(),
                    const StarRating(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
