import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({
    super.key,
    this.spaceBetweenItem,
  });
  final double? spaceBetweenItem;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Padding(
        padding: EdgeInsets.only(left: spaceBetweenItem ?? 10),
        child: Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  image: AssetImage(AssetData.testPhoto))),
        ),
      ),
    );
  }
}
