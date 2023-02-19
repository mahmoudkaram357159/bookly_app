import 'package:flutter/material.dart';

import 'best_seller_listview_item.dart';

class ListViewBestSellers extends StatelessWidget {
  const ListViewBestSellers({super.key});

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
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
