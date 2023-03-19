import 'package:bookly_app/features/main_screen/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/cutome_search.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomSearch(),
        SizedBox(
          height: 20,
        ),
        Text(
          "Search Result",
          style: Styles.mediumTitle,
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(child: SearchResultList()),
      ],
    );
  }
}

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: ((context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerItemListView(),
        );
      }),
      itemCount: 10,
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
    );
  }
}
