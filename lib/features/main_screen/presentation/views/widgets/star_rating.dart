import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class StarRating extends StatelessWidget {
  const StarRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

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
        const Text("4.8",
            maxLines: 1,
            style: Styles.textStyle16,
            overflow: TextOverflow.ellipsis),
        const SizedBox(
          width: 4,
        ),
        Text("(2390)",
            maxLines: 1,
            style: Styles.textStyle14.copyWith(color: Colors.grey),
            overflow: TextOverflow.ellipsis),
      ],
    );
  }
}
