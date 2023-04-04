import 'package:bookly_app/features/main_screen/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class CustomListViewSmiler extends StatelessWidget {
  const CustomListViewSmiler({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: ((context, index) {
            return const   CustomBookItem(
              spaceBetweenItem: 5,
              url: "https://images-na.ssl-images-amazon.com/images/I/51ZyIuB1ZaL._SX331_BO1,204,203,200_.jpg",
            );
          })),
    );
  }
}
