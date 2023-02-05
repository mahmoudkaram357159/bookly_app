import 'package:bookly_app/features/main_screen/presentation/views/widgets/custome_listview_item.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .33,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return const CustomListViewItem();
            })),
      ),
    );
  }
}