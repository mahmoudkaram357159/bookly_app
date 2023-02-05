import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/custome_listView.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/custome_listview_item.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import 'best_seller_listview_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CustomAppBar(),
          const CustomListView(),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Best Seller",
            style: Styles.mediumTitle,
          ),
          const SizedBox(
            height: 10,
          ),
          const BestSellerItemListView(),
        ],
      ),
    );
  }
}
