import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
            },
            icon: const Icon(Icons.close)),
        const Spacer()
        ,IconButton(
            onPressed: () {
              //GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
            },
            icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
