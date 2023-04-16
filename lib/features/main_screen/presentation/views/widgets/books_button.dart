import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/text_button.dart';
import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CommonTextButton(
            text: 'Free',
            size: 16,
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
          ),
           CommonTextButton(
            text: getText(bookModel),
            onPressed: (){
               launchCustomUr(context, bookModel.volumeInfo!.previewLink);
            },
            size: 12,
            textColor: Colors.white,
            backgroundColor: const Color(0xFFEF8262),
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          )
        ],
      ),
    );
  }
}
String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
