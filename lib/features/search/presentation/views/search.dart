import 'package:bookly_app/features/search/presentation/views/widgets/search_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SearchScreenBody(),
      )),
    );
  }
}
