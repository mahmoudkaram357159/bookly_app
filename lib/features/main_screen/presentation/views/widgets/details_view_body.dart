import 'package:bookly_app/features/main_screen/presentation/views/widgets/custome_appbar_book_details.dart';
import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16,
              ),
              child: CustomAppBarBookDetails(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2),
            child: const CustomBookItem(),
          )
        ],
      ),
    );
  }
}
