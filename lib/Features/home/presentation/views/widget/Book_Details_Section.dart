import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'Book_Rating.dart';
import 'Button_Action.dart';

class Book_Details_Section extends StatelessWidget {
  const Book_Details_Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(color: Color(0Xff707070)),
        ),
        const SizedBox(
          height: 16,
        ),
        Book_Rating(),
        const SizedBox(
          height: 37,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: BookAction(),
        ),
      ],
    );
  }
}
