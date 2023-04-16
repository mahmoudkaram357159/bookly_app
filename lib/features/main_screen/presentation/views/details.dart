import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/main_screen/presentation/management_ui/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/main_screen/presentation/views/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsViewScreen extends StatefulWidget {
  const DetailsViewScreen({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<DetailsViewScreen> createState() => _DetailsViewScreenState();
}

class _DetailsViewScreenState extends State<DetailsViewScreen> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).similarNewestBooks(
        category: widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DetailsViewBody(bookModel: widget.bookModel,),
    );
  }
}
