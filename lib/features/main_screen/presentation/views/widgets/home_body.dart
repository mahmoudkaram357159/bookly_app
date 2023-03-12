
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/best_list_item.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/custome_listView.dart';
import 'package:flutter/material.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 48, left: 30.0, right: 30.0),
                child: CustomAppBar(),
              ),
              const CustomListView(),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Best Seller",
                  style: Styles.mediumTitle,
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListViewBestSellers(),
          ),
        )
      ],
    );
  }
}
