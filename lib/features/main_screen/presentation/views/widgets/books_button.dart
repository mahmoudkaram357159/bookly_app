import 'package:bookly_app/core/widgets/text_button.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CommonTextButton(
            text: '19.99',
            size: 16,
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
          ),
          const CommonTextButton(
            text: 'Free Preview',
            size: 12,
            textColor: Colors.white,
            backgroundColor: Color(0xFFEF8262),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          )
        ],
      ),
    );
  }
}
