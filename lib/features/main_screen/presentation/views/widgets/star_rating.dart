import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class StarRating extends StatelessWidget {
  const StarRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.countRating ,
      required this.averageRating });
  final MainAxisAlignment mainAxisAlignment;
  final int countRating;
  final int averageRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(averageRating.toString(),
            maxLines: 1,
            style: Styles.textStyle16,
            overflow: TextOverflow.ellipsis),
        const SizedBox(
          width: 4,
        ),
        Text("($countRating)",
            maxLines: 1,
            style: Styles.textStyle14.copyWith(color: Colors.grey),
            overflow: TextOverflow.ellipsis),
      ],
    );
  }
}
