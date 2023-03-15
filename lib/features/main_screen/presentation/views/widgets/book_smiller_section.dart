import 'package:flutter/material.dart';


import '../../../../../core/utils/styles.dart';
import 'custome_list_view_item_smailer.dart';
class BookSmilerSection extends StatelessWidget {
  const BookSmilerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          "You can also like ",
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 3,
        ),
        const CustomListViewSmiler(),
        const SizedBox(
          height: 40.0,
        )
      ],
    );
  }
}