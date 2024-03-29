import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomBookItem extends StatelessWidget {
  const CustomBookItem({
    super.key,
    this.spaceBetweenItem,
     required this.url,
  });
  final double? spaceBetweenItem;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Padding(
          padding: EdgeInsets.only(left: spaceBetweenItem ?? 10),
          child: CachedNetworkImage(imageUrl:url, 
          fit: BoxFit.fill,
           placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
         
        ),
      ),
    );
  }
}
